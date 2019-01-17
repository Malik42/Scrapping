require 'nokogiri'
require 'open-uri'

def get_url_and_name
  page_url = "http://annuaire-des-mairies.com/val-d-oise.html"
  doc = Nokogiri::HTML(open(page_url))
  ville = doc.css("a[href].lientxt")
  # puts ville["href"]
  name_and_url = {}

  ville.map.with_index do |element, i|
    name_and_url[i] = "name" => element.text
    # name_and_url[i]["url"] = element["href"]
    # puts element.text
  end

  name_and_url
end

puts get_url_and_name
# #email = doc.css("a.price")
# puts ville.text.split