module AvalaraTaxRatesApi
  class Response
    attr_reader :body, :status, :request

    def initialize(response_body:, request:)
      @body = response_body
      @request = request
    end

    def json
      @json ||= JSON.parse(body)
    end

    def success?
    end

    def status
    end
  end
end
