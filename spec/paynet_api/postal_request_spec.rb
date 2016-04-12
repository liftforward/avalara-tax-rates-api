describe AvalaraTaxRatesApi::PostalRequest do

  context "valid request constructed using defaults" do
    before {
      AvalaraTaxRatesApi::Config.api_key='abcd'
      AvalaraTaxRatesApi::Config.base_url='https://hostname'
    }

    subject { AvalaraTaxRatesApi::PostalRequest.new(postal: '11215', country: 'usa') }

    its (:url) { is_expected.to eq("https://hostname/postal?country=usa&postal=11215") }
  end

  context "valid request constructed using optional options param" do
    let (:options) {{ api_key: 'abcddefg', base_url: 'https://hostname-option' }}

    subject { AvalaraTaxRatesApi::PostalRequest.new(postal: '11215', country: 'usa', options: options) }

    its (:url) { is_expected.to eq("https://hostname-option/postal?country=usa&postal=11215") }
  end

end
