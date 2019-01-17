require 'nokogiri'
require 'open-uri'

def get_url_and_name
  page_url = "http://annuaire-des-mairies.com/val-d-oise.html"
  doc = Nokogiri::HTML(open(page_url))
  ville = doc.css("a[href].lientxt")
  # puts ville["href"]
  # name_and_url = []

  ville.map.with_index do |element, i|
  #   name_and_url[i][0] = element.text
  #   name_and_url[i][1] = element["href"]
    puts element.text
  end

  # name_and_url
end

get_url_and_name
# #email = doc.css("a.price")
# puts ville.text.split