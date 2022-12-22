require 'octokit'
require 'yaml'
require 'json'
require 'fileutils'
require 'date'
require 'time'

# 削除対象かどうか
def isExpired(h)
    # pull requestのみ削除
    if(h['group'] != "pullrequest")
        return false
    end

    # closedステータスのみ削除
    keepingPeriod = 0
    prnum = h['pullrequest_url'].split('/').last
    octokitClient = Octokit::Client.new(access_token: ARGV[0])

    pr = octokitClient.pull_request("jami-fhir-jp-wg/jp-core-v1x", prnum)

    if(pr[:state] != "closed")
        return false
    end
    if(pr[:closed_at] == nil)
        return false
    end
    
    # closedかつkeepingTimeを過ぎたもののみ削除
    closeAt = DateTime.parse( pr[:closed_at].to_s).new_offset('+9:00')
    p "#{prnum}: state=#{pr[:state]} , close_at=#{closeAt}"
    
    if(closeAt > DateTime.now - keepingPeriod)
        return false
    end

    return true
end

# ==========================
# エントリーポイント
# ==========================
delDirs = []
for im in Dir.glob('./*/*/_index.yml').concat(Dir.glob('./*/*/*/_index.yml'))
    File.open(im) do |f|
        h = YAML.load(f)

        if(isExpired(h))
            delDirs << File.dirname(im)
        end 
    end
end

for delDir in delDirs
    p "廃棄フォルダ：#{delDir}"
    FileUtils.rm_rf(delDir)
end

