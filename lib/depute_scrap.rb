require 'nokogiri'
require 'open-uri'

def get_url_and_name
  page_url = "https://www.nosdeputes.fr/deputes"
  doc = Nokogiri::HTML(open(page_url))
  annuaire = doc.css("span.list_nom")
  name_and_url = []

  annuaire.map.with_index do |element, i|
    nom_prenom = element.text.tr("\,\n", "").split
    name_and_url << {"nom" => nom_prenom[0], "prenom" => nom_prenom[1], "url" => "https://www.nosdeputes.fr/" + nom_prenom[1].downcase + "-" + nom_prenom[0].downcase}
  end
  name_and_url
end

def get_townhall_email(townhall_url)
  page_url = townhall_url
  doc = Nokogiri::HTML(open(page_url))
  email = doc.xpath("//a[contains(@href,'mailto')]").first.text
end

def get_all_email(deputes)
  email_tab = []
  deputes.map.with_index do |depute, index|
    # puts ville["url"]
    email = get_townhall_email(depute["url"])
    # if email == ""
    #   email_tab << {depute["ville"] => "NO EMAIL"}
    # else
    email_tab << {"first_name" => depute["nom"], "lest_name" => depute["prenom"], "email" => email}
    # end
  end
  email_tab
end

def perform
  depute = get_all_email(get_url_and_name)
  puts depute
  # puts get_townhall_email(depute[0]["url"])
  # puts depute[0]["url"]
  # villes = get_all_email(get_url_and_name)
  # puts villes
end

perform