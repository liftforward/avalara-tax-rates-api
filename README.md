# avalara-tax-rates-api [ ![Codeship Status for liftforward/avalara-tax-rates-api](https://codeship.com/projects/f3cefae0-eae5-0133-7229-5e83b9717393/status?branch=master)](https://codeship.com/projects/148033)

avalara-tax-rates-api is a ruby gem client for the Avalara Tax Rates API. It's currently a work in progress and only supports limited API functionality.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'avalara-tax-rates-api'
```

And then execute:

```
$ bundle install
```

Or install it yourself as:

```
$ gem install avalara-tax-rates-api
```
## Usage

### Configuration
TODO

### Working with the API

TODO

### Development
After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

### Running the integration suite
To run the integration suite you will need credentials from Paynet. Once you have your credentials set them in the following environment variables:
```
BASE_URL=https://taxrates.api.avalara.com
API_KEY={your api key}
PROXY_URL={your proxy url if used}
```

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/liftforward/avalara-tax-rates-api.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
