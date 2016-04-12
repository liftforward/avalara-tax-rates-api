module AvalaraTaxRatesApi
  class AddressRequest < BaseRequest
    attr_accessor :street, :city, :state, :postal, :country

    def initialize street:, city:, state:, postal:, country: 'usa', options: {}
      super options

      @street = street
      @city = city
      @state = state
      @postal = postal
      @country = country
    end

    def url
      URI.encode "#{base_url}/address?country=#{country}&street=#{street}&city=#{city}&state=#{state}&postal=#{postal}"
    end

  end
end
