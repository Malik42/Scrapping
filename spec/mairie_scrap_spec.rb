require_relative '../lib/mairie_scrap'

describe 'get_url_and_name' do
  it "return a table with the city the mairie website url" do
    expect(get_url_and_name).to be_instance_of Array
    expect(get_url_and_name).to include({"ville" => "BANTHELU", "url" => "http://annuaire-des-mairies.com/95/banthelu.html"})
    expect(get_url_and_name).to include({"ville" => "BUHY", "url" => "http://annuaire-des-mairies.com/95/buhy.html"})
  end
end

describe 'get_townhall_email' do
  it "return the email that was taken on the website by the url" do
    expect(get_townhall_email("http://annuaire-des-mairies.com/95/banthelu.html")).to eq("mairie.banthelu@wanadoo.fr")
    expect(get_townhall_email("http://annuaire-des-mairies.com/95/charmont.html")).to eq("mairie.charmont@wanadoo.fr")
    expect(get_townhall_email("http://annuaire-des-mairies.com/95/omerville.html")).to eq("Mairie.omerville@orange.fr")
    expect(get_townhall_email("http://annuaire-des-mairies.com/95/montmorency.html")).to eq("directiongenerale@ville-montmorency.fr")
  end
end

describe 'get_all_email' do
  it "return array with the name of the city and his email" do
    expect(get_all_email([{"ville" => "BUHY", "url" => "http://annuaire-des-mairies.com/95/buhy.html"}])).to be_instance_of Array
    expect(get_all_email([{"ville" => "BUHY", "url" => "http://annuaire-des-mairies.com/95/buhy.html"}])).to include({"BUHY" => "mairie.buhy@wanadoo.fr"})
    expect(get_all_email([{"ville" => "VEMARS", "url" => "http://annuaire-des-mairies.com/95/vemars.html"}])).to include({"VEMARS" => "sandrine_ravenel@yahoo.fr"})
  end
end
