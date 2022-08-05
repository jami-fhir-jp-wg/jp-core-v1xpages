# index.html更新プログラム
require 'yaml'
require 'json'
require 'fileutils'
require 'date'
require 'time'

index_src = 'resources/index.org'   #コピー元index.html
index_dest = 'index.html'           #コピー先index.html

# pull request link
def getpullrequestlink(url, title)
    if(url=='')
        return ''
    else
        return "<a href='" + url + "' ><img src='resources/img/gitpullrequest.svg'/>" + title + "</a> <br/>"
    end
end


# テーブル列を作成
def populate_html( fName, hash, published, warn)
    return '<tr><td>{name}<br/>({version})<br/><label class="{group}">{group}</label></td><td>{pullrequest_link}{branch}</td><td>{published}</td><td>{user}</td><td><a href="{fName}index.html"><img src="resources/img/guidance.svg"/>実装ガイド</a><br/><a href="{fName}qa.min.html"><img src="resources/img/alert.svg"/>警告</a>　<a href="{fName}qa.html"><img src="resources/img/check.svg"/>ＱＡ</a><br/>{warn}</td></tr>'
    .gsub(/{fName}/, fName)
    .gsub(/{name}/, hash['name'])
    .gsub(/{version}/, hash['version'].to_s)
    .gsub(/{group}/, hash['group'].slice(/^[^\/]+/))
    .gsub(/{branch}/, hash['branch'])
    .gsub(/{published}/, published)
    .gsub(/{user}/, hash['actor'])
    .gsub(/{warn}/, warn)
    .gsub(/{pullrequest_link}/, getpullrequestlink(hash['pullrequest_url'].to_s,hash['pullrequest_title'].to_s ))
end

# 発行日を取得
def getPublished(h)
    if(h['last_published']!=nil)
        date = DateTime.parse(h['last_published']).new_offset('+09:00')
        dw = ["日", "月", "火", "水", "木", "金", "土"][date.wday]
        return date.strftime('%y年%m月%d日(' + dw + ')<br/>%H時%M分')
    else
        return  ''
    end
end

def getQaIndex(d)
    path = d + "/qa.json"
    p path
    File.open(path) do |f|
        h = JSON.load(f)
        return 'e=' + h["errs"].to_s + ',w=' + h["warnings"].to_s + ',h=' + h["hints"].to_s  
    end
end

# ----------------------------------------
p 'メイン処理開始'
# ----------------------------------------
infos = []
p 'フォルダより_index.ymlを検索'
for im in Dir.glob('./*/*/_index.yml').concat(Dir.glob('./*/*/*/_index.yml'))
    File.open(im) do |f|
        h = YAML.load(f)
        date = getPublished(h)
        qa = getQaIndex(File::dirname(im))
        info = {"file" => im.sub('_index.yml',''), "json" => h, "date" => date, "qa" => qa}
        infos << info
    end
end

content = ''
first = true
prcount = 0
infos.sort_by {|v| v["date"]}.reverse.each do |i|
    if(i['json']['group']=="pullrequest")
        prcount = prcount + 1
    end
    if(i['json']['group']!="pullrequest" || prcount <= 15)
        if(first)
            first=false
            i['date'] =  i['date'] + '<label class="new">new</label>'
        end
        content << (populate_html(i['file'], i['json'] , i['date'], i['qa'])) + "\n"
    end
end

p 'コピー元取得'
page = ''
File.open(index_src) do |fr|
    page = fr.read()
    page = page.sub('{table content}', content)
end

p 'コピー先取得'
File.open(index_dest, 'w') do |fw|
    fw.puts page
end
