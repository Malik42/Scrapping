require 'nokogiri'
require 'open-uri'

def merge_tab_in_hash(array_key, array_value)
  hash = {}
  array_key.zip(array_value) { |key, value| hash[key] = value }
  hash
end

def get_array_of_hash(array)
  crypto = []
  for i in array
    crypto << {i[0] => i[1]}
  end
  crypto
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

  return merge_tab_in_hash(name_tb, price_tb)
end

def perform
  crypto = get_array_of_hash(scrap_crypto())
  puts crypto
end

perform
