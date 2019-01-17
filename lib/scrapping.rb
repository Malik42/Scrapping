require 'nokogiri'
require 'open-uri'

crypto ={}

Page_Url = 'https://coinmarketcap.com/all/views/all/'
doc = Nokogiri::HTML(open(Page_Url))

node_text = doc.css("a[href].currency-name-container")
  node_text.map do |element|
  crypto = {"name" => element["href"].byteslice(12, element["href"].length).tr("/", "")}
  puts crypto["name"]
end