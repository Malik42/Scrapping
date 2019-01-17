require_relative '../lib/crypto_scrap'

describe 'merge_tab_in_hash' do
  it "return a table with the name and surname of the members and their email" do
    expect(merge_tab_in_hash).to be_instance_of Array
  end
end

describe 'get_array_of_hash' do
  it "return the email of the site concerned" do
    expect(get_array_of_hash('https://www.nosdeputes.fr/caroline-abadie')).to eq("caroline.abadie@assemblee-nationale.fr")
  end

describe 'scrap_crypto' do
  it "return the email that was taken on the website by the url" do
    expect(scrap_crypto([{"name_tb" => "BTC", "price_tb" => "$3666.26"}])).to be_instance_of Array
  end
end
