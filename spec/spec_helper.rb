require 'bundler/setup'
Bundler.setup

require 'dotenv'
Dotenv.load

require 'rspec/matchers'
require 'equivalent-xml'
require 'rspec/collection_matchers'
require 'avalara_tax_rates_api'
# require 'hashie'
require 'rspec/its'
require 'support/helper_methods'
require 'pry'

RSpec.configure do |config|
  config.filter_run :focus
  config.run_all_when_everything_filtered = true

  config.before(:suite) do
    AvalaraTaxRatesApi::Config.base_url = ENV['BASE_URL']
    AvalaraTaxRatesApi::Config.api_key = ENV['API_KEY']
  end

end
