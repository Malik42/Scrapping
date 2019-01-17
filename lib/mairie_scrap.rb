require 'nokogiri'
require 'open-uri'

page_url = "http://annuaire-des-mairies.com/val-d-oise.html"
doc = Nokogiri::HTML(open(page_url))

ville = doc.css("a.lientxt")
#email = doc.css("a.price")
puts ville