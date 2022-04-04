# index.html更新プログラム
require 'yaml'
require 'fileutils'
require 'date'
require 'time'

index_src = 'resources/index.org'   #コピー元index.html
index_dest = 'index.html'           #コピー先index.html

# テーブル列を作成
def populate_html( fName, name, branch, version, description, published)
    return '<tr><td>{name}</td><td>{version}</td><td>{branch}</td><td>{published}</td><td><a href="{fName}index.html">ページ</a></td><td><a href="{fName}qa.html">警告</a></td></tr>'
    .gsub(/{fName}/, fName).gsub(/{name}/,name).gsub(/{version}/, version.to_s).gsub(/{branch}/, branch).gsub(/{published}/,published)
end

p 'メイン処理開始'
content = ''
p 'フォルダより_index.ymlを検索'
for im in Dir.glob('./*/*/_index.yml')
    File.open(im) do |f|
        h = YAML.load(f)
        if(h[3]['last_published']!=nil)
            date = DateTime.parse(h[3]['last_published']).new_offset('+09:00').to_s
        else
            date = ''
        end
        content << (populate_html(im.sub('_index.yml',''), h[0]['name'], h[4]['branch'], h[1]['version'], h[2]['description'],date))
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
