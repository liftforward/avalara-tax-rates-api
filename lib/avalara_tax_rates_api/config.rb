module AvalaraTaxRatesApi
  class Config
    class << self
      attr_accessor :base_url,
                    :api_key,
                    :log,
                    :log_level
    end
    
    def self.logger
      @logger ||= Logger.new($stdout)
    end

    def self.logger= logger
      @logger=logger
    end
  end
end
