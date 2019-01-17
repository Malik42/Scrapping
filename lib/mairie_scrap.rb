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
    url[0] = ""
    name_and_url << {"ville" => city, "url" => "http://annuaire-des-mairies.com" + url}

  end
  name_and_url
end

def get_townhall_email(townhall_url)

end

def perform
  villes = get_url_and_name
  puts villes[0][1]

end

perform