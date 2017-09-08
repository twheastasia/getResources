# -- coding: UTF-8 --·
require 'json'

bundle_json_data = File.read('bundle_ids.json')
json = JSON.parse(bundle_json_data)
puts json[0]

type_dict = {
    "png": ["img",150],
    "jpg": ["img",150],
    "mp3": ["sound",20],
    "mp4": ["video",10],
    "gif": ["img",150],
    "swf": ["flash", 3]
}

def download_from_url url, dir_name
  puts url
  puts dir_name
  `wget -P #{dir_name} -x -nd --content-disposition  #{url}`
  #`wget -r -A.png #{url}`
end


puts Time.new
#download_from_url 'http://www.baidu.com/EnglishLogo.png1', '中文目录'

#puts $?.exitstatus
puts Time.new

json.each do |bundle_id|
  dname = bundle_id['name'].sub(' ', '')
  puts dname
  base_url = 'http://img-courseware.aaa.com/'+ bundle_id['bundle_id'] + '/data/'
  puts base_url
end
