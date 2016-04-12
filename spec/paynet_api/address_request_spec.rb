describe AvalaraTaxRatesApi::AddressRequest do

  let (:address) {{ street: '515 North County Road', city: 'Palm Beach', state: 'FL', postal: '11215', country: 'usa' }}

  context "valid request constructed using defaults" do
    before {
      AvalaraTaxRatesApi::Config.api_key='abcd'
      AvalaraTaxRatesApi::Config.base_url='https://hostname'
    }

    subject { AvalaraTaxRatesApi::AddressRequest.new(address) }

    its (:url) { is_expected.to eq("https://hostname/address?country=usa&street=515%20North%20County%20Road&city=Palm%20Beach&state=FL&postal=11215") }
  end

  context "valid request constructed using optional options param" do
    let (:options) {{ api_key: 'abcddefg', base_url: 'https://hostname-option' }}

    subject { AvalaraTaxRatesApi::AddressRequest.new(address.merge(options: options)) }

    its (:url) { is_expected.to eq("https://hostname-option/address?country=usa&street=515%20North%20County%20Road&city=Palm%20Beach&state=FL&postal=11215") }
  end

end
