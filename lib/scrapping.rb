require 'nokogiri'
require 'open-uri'

Page_Url = 'https://coinmarketcap.com/all/views/all/'
doc = Nokogiri::HTML(open(Page_Url))

doc.xpath('//*[@id="currencies-all"]/tbody').each do |node|
  puts node.text
end
