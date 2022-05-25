# index.html更新プログラム
require 'yaml'
require 'json'
require 'fileutils'
require 'date'
require 'time'

index_src = 'resources/index.org'   #コピー元index.html
index_dest = 'index.html'           #コピー先index.html

# テーブル列を作成
def populate_html( fName, hash, published, warn)
    return '<tr><td>{name}<br/>({version})<br/><label class="{group}">{group}</label></td><td>{branch}</td><td>{published}</td><td>{user}</td><td><a href="{fName}index.html">ページ</a></td><td><a href="{fName}qa.min.html">警告</a>　<a href="{fName}qa.html">全体</a><br/>{warn}</td></tr>'
    .gsub(/{fName}/, fName)
    .gsub(/{name}/, hash['name'])
    .gsub(/{version}/, hash['version'].to_s)
    .gsub(/{group}/, hash['group'])
    .gsub(/{branch}/, hash['branch'])
    .gsub(/{published}/, published)
    .gsub(/{user}/, hash['actor'])
    .gsub(/{warn}/, warn)
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

# ---------------------------------------
p 'メイン処理開始'
# ---------------------------------------
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
count = 0
infos.sort_by {|v| v["date"]}.reverse.each do |i|
    if(i['json']['group']=="pullrequest")
        count = count + 1
    end
    if(i['json']['group']!="pullrequest" || count <= 5)
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
