require_relative '../lib/crypto_scrap'

describe 'scrap_crypto' do
  it "return the email that was taken on the website by the url" do
    expect(scrap_crypto).is_a?(Hash)
  end

  it "return the email that was taken on the website by the url" do
    expect(scrap_crypto).not_to be_nil
  end
end