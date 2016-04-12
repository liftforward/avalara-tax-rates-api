module AvalaraTaxRatesApi
  class Client
    def get_tax_rates_by_address(params)
      request = AvalaraTaxRatesApi::AddressRequest.new(params)
      response = get(request)
      AvalaraTaxRatesApi::Response.new(response_body: response.body, request: request)
    end

    def get_tax_rates_by_postal(postal:, country: "usa")
      request = AvalaraTaxRatesApi::PostalRequest.new(postal: postal, country: country)
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
