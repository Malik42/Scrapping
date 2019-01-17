require 'nokogiri'
require 'open-uri'

def get_url_and_name
  page_url = "http://annuaire-des-mairies.com/val-d-oise.html"
  doc = Nokogiri::HTML(open(page_url))
  annuaire = doc.css("a[href].lientxt")
  vl = {}
  url = {}
  name_and_url = []

  annuaire.map.with_index do |element, i|
    city = element.text
    url = element["href"]
    name_and_url << {city => url}
  end
  pp name_and_url
end

get_url_and_name
