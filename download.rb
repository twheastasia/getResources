# -- coding: UTF-8 --·


def download_from_url url, dir_name
  puts url
  puts dir_name
  `wget -P #{dir_name} -x -nd --content-disposition  #{url}`
  #`wget -r -A.png #{url}`
end

puts Time.new
download_from_url 'http://www.beta.azj.saybot.net/images/EnglishLogo.png1', '中文目录'
#download_from_url 'https://walle.dev.saybot.net', '中文目录'
puts $?.exitstatus
puts Time.new


