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
    expect(get_all_email.is_a?(Hash)
  end
end
