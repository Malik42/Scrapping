require_relative '../lib/crypto_scrap'

describe 'merge_tab_in_hash' do
  it "merge tab in hash" do
    expect(merge_tab_in_hash(["MRQ","TWIST"], ["$0.000074","$0.000185"])).to include("TWIST"=>"$0.000185")
  end
end

describe 'get_array_of_hash' do
  it "return tarray of hash" do
    expect(get_array_of_hash({"MRQ"=>"$0.000074", "TWIST"=>"$0.000185"})).to include({"MRQ"=>"$0.000074"})
  end
end

describe 'scrap_crypto' do
  it "return the email that was taken on the website by the url" do
    expect(scrap_crypto).is_a?(Hash)
  end

  it "return the email that was taken on the website by the url" do
    expect(scrap_crypto).not_to be_nil
  end
end
<<<<<<< HEAD
=======

# describe 'scrap_crypto' do
#   it "return the email that was taken on the website by the url" do
#     expect(scrap_crypto([{"name_tb" => "BTC", "price_tb" => "$3666.26"}])).to be_instance_of Array
#   end
# end
>>>>>>> 34988ba55c65a4d8c2c782ccc01ac0617dd8db8b
