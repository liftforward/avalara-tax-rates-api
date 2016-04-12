module AvalaraTaxRatesApi
  class PostalRequest < BaseRequest
    attr_accessor :postal, :country

    def initialize postal:, country: 'usa', options: {}
      super options

      @postal = postal
      @country = country
    end

    def url
      URI.encode "#{base_url}/postal?country=#{country}&postal=#{postal}"
    end

  end
end
