require 'nokogiri'
require 'open-uri'

Page_Url = 'https://coinmarketcap.com/all/views/all/'
doc = Nokogiri::HTML(open(Page_Url))
# //*[@id="id-bitcoin"]/td[2]
# node_text = doc.xpath('//*[@id="currencies-all"]/tbody')..text
# node_text = doc.xpath('//*[@id="currencies-all"]/tbody//td').text
node_text = doc.css("a[href].currency-name-container")
  # node_text = node.text
  # puts node_text
  # node_text = doc.css("a.price")

