require 'nokogiri'
require 'open-uri'

def get_url_and_name
  page_url = "http://annuaire-des-mairies.com/val-d-oise.html"
  doc = Nokogiri::HTML(open(page_url))
  annuaire = doc.css("a[href].lientxt")
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
  page_url = townhall_url
  doc = Nokogiri::HTML(open(page_url))
  email = doc.xpath("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]").text
end

def get_all_email(villes)
  email_tab = []
  villes.map.with_index do |ville, index|
    # puts ville["url"]
    email = get_townhall_email(ville["url"])
    if email == ""
      email_tab << {ville["ville"] => "NO EMAIL"}
    else
      email_tab << {ville["ville"] => email}
    end
  end
  email_tab
end

def perform
  villes = get_all_email(get_url_and_name)
  puts villes
end

perform