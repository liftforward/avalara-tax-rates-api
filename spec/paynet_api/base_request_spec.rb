describe AvalaraTaxRatesApi::BaseRequest do

  context 'BaseRequest constructed with parameters' do
    subject { AvalaraTaxRatesApi::BaseRequest.new api_key: 'abcd', base_url: 'https://hostname' }

    its (:headers) { is_expected.to eq({ Authorization: "AvalaraApiKey abcd"}) }
    its (:base_url) { is_expected.to eq("https://hostname") }
    its (:api_key) { is_expected.to eq("abcd") }
  end

  context 'BaseRequest constructed using defaults' do
    before {
      AvalaraTaxRatesApi::Config.api_key='abcdefgh'
      AvalaraTaxRatesApi::Config.base_url='https://defaut-hostname'
    }

    subject { AvalaraTaxRatesApi::BaseRequest.new }

    its (:headers) { is_expected.to eq({ Authorization: "AvalaraApiKey abcdefgh"}) }
    its (:base_url) { is_expected.to eq("https://defaut-hostname") }
    its (:api_key) { is_expected.to eq("abcdefgh") }
  end

end
