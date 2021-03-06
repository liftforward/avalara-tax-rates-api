# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'avalara_tax_rates_api/version'

Gem::Specification.new do |spec|
  spec.name          = "avalara-tax-rates-api"
  spec.version       = AvalaraTaxRatesApi::VERSION
  spec.authors       = ["Drew Nichols"]
  spec.email         = ["drew@liftforward.com"]

  spec.summary       = "Client Gem for the Avalara Tax Rates Api"
  spec.description   = "Client Gem for the Avalara Tax Rates Api"
  spec.homepage      = "https://github.com/liftforward/avalara-tax-rates-api"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'builder',     '~> 3.1'
  # spec.add_dependency 'hashie',      '~> 3.4.1'
  spec.add_dependency 'rest-client', '~> 1.8'
end
