require "avalara_tax_rates_api"
require "awesome_print"

describe "Avalara Tax Rates API Integration", :slow, :integration do
  context "Avalara Tax Rates API returns tax rate for Brooklyn" do
    AvalaraTaxRatesApi::Config.base_url = ENV['BASE_URL']
    AvalaraTaxRatesApi::Config.api_key = ENV['API_KEY']
    response= AvalaraTaxRatesApi::Client.new.get_tax_rates_by_postal({postal: "11215", country: "usa"})

    subject { response }

    it { is_expected.to be_a(AvalaraTaxRatesApi::Response) }
    its(:json) { is_expected.to be_a(Hash) }
    its(:json) { is_expected.to include('totalRate', 'rates') }
  end

  context "Avalara Tax Rates API returns non 200 response" do
    before {
      AvalaraTaxRatesApi::Config.base_url = ENV['BASE_URL']
      AvalaraTaxRatesApi::Config.api_key = ENV['API_KEY']
    }

    subject { AvalaraTaxRatesApi::Client.new.get_tax_rates_by_postal({postal: "00000", country: "usa"}) }

    it { expect{subject}.to raise_exception(RestClient::BadRequest) }
  end
end