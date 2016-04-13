module AvalaraTaxRatesApi
  class Client
    def get_tax_rates_by_address(street:, city:, state:, postal:, country: 'usa', options: {})
      request = AvalaraTaxRatesApi::AddressRequest.new(street: street, city: city, state: state, postal: postal, country: country, options: options)
      response = get(request)
      AvalaraTaxRatesApi::Response.new(response_body: response.body, request: request)
    end

    def get_tax_rates_by_postal(postal:, country: "usa", options: {})
      request = AvalaraTaxRatesApi::PostalRequest.new(postal: postal, country: country, options: options)
      response = get(request)
      AvalaraTaxRatesApi::Response.new(response_body: response.body, request: request)
    end

    private
    def get request
      RestClient::Request.execute(method: :get,
                                  url: request.url,
                                  headers: request.headers)
    end

  end
end
