require_relative '../lib/depute_scrap'

describe 'get url and name' do
  it "return a table with the name and surname of the members and their email" do
    expect(get_url_and_name).to be_instance_of Array
  end
end

describe 'get_townhall_email' do
  it "return the email that was taken on the website by the url" do
    expect('https://www.nosdeputes.fr/damien-abad').not_to be_nil
  end
end

describe 'get_townhall_email' do
  it "return the email that was taken on the website by the url" do
<<<<<<< HEAD
    expect(get_all_email.is_a?(Hash)
=======
    expect(get_all_email([{"nom" => "Blein", "prenom" => "Yves", "url" => "https://www.nosdeputes.fr/yves-blein"}])).to be_instance_of Array
>>>>>>> 71f3e91a340816e7731c1985a83f67947fffc6eb
  end
end
