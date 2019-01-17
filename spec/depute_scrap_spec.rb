require_relative '../lib/depute_scrap'

describe 'get_url_and_name' do
  it "return a table with the name and surname of the members and their email" do
    expect(get_url_and_name).to be_instance_of Array
  end

  it "return a table with the name and surname of the members and their email" do
    expect(get_url_and_name).is_a?(Hash)
  end

  it "return a table with the name and surname of the members and their email" do
    expect(get_url_and_name).not_to be_nil
  end
end

describe 'get_townhall_email' do
  it "return the email of the site concerned" do
    expect(get_townhall_email('https://www.nosdeputes.fr/caroline-abadie')).to eq("caroline.abadie@assemblee-nationale.fr")
  end

  it "return the email of the site concerned" do
    expect(get_townhall_email('https://www.nosdeputes.fr/said-ahamada')).to eq("said.ahamada@assemblee-nationale.fr")
  end

  it "return the email of the site concerned" do
    expect(get_townhall_email('https://www.nosdeputes.fr/louis-aliot')).to eq("louis.aliot@assemblee-nationale.fr")
  end
end

describe 'get_all_email' do
  it "return the email that was taken on the website by the url" do
    expect(get_all_email([{"nom" => "Blein", "prenom" => "Yves", "url" => "https://www.nosdeputes.fr/yves-blein"}])).to be_instance_of Array
  end

  it "return the email that was taken on the website by the url" do
    expect(get_all_email([{"nom" => "Adam", "prenom" => "Damien", "url" => "https://www.nosdeputes.fr/damien-adam"}])).to be_instance_of Array
  end

  it "return the email that was taken on the website by the url" do
    expect(get_all_email([{"nom" => "Ali", "prenom" => "Ramlati", "url" => "https://www.nosdeputes.fr/ramlati-ali"}])).to be_instance_of Array
  end
end
