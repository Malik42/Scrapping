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

<<<<<<< HEAD
crypto = {}

doc.xpath('//*[@id="currencies-all"]/tbody').each do |node|
  crypto = {"crypto" => node.text.split}
  puts crypto
end

=======
  # puts node_text['href'].byteslice(12, 7)
  node_text.map do |element|
    puts element["href"].byteslice(12, element["href"].length).tr("/", "")
  end
>>>>>>> c8561ac92f9619580cc1aece2419ce0655fdbe67
