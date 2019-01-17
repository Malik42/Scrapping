require 'nokogiri'
require 'open-uri'

def merge_tab_in_hash(array_key, array_value)
  hash = {}
  
  array_key.zip(array_value) { |key, value| hash[key] = value }
  # tab = [hash]
  hash
end

def scrap_crypto
  page_url = "https://coinmarketcap.com/all/views/all/"
  doc = Nokogiri::HTML(open(page_url))
  name = doc.css("span/a.link-secondary")
  price = doc.css("a.price")
  price_tb = []
  name_tb = []

  name.map.with_index do |element, i|
    name_tb[i] = element.text
  end

  price.map.with_index do |element, i|
    price_tb[i] = element.text
  end

  final_hash = merge_tab_in_hash(name_tb, price_tb)
end

def perform
  crypto = scrap_crypto
  # puts crypto
  index = 0
  final_crypto = []
  for i in crypto
    final_crypto << {i[0] => i[1]}
  end
  # puts final_crypto
  tab_crypto = []
  tab_crypto = [final_crypto]
  puts tab_crypto
end

perform