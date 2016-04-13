module AvalaraTaxRatesApi
  class BaseRequest
    attr_accessor :base_url, :api_key, :proxy_url

    def initialize(options = {})
      @base_url= options[:base_url] || AvalaraTaxRatesApi::Config.base_url
      @api_key= options[:api_key] || AvalaraTaxRatesApi::Config.api_key
      @proxy_url= options[:proxy_url] || AvalaraTaxRatesApi::Config.proxy_url
    end

    def headers
      { 
        Authorization: "AvalaraApiKey #{api_key}"
      }
    end

  end
end
