# Teamsquare HMAC Signature

Gem to share common HMAC generation logic between projects.

Generates an HMAC specifically for use between the ldap_gateway and the Teamsquare API. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'teamsquare_hmac_signature'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install teamsquare_hmac_signature

## Usage

    2.2.4 :001 > TeamsquareHmacSignature::HMAC256.generate('shared_secret', 'jappleseed', 1479003125, 'ba867f4773eac31b351684f1460cf8a621d2011a446b5134')
     => "ab9596edf4e21f19c2dcbdc13944944f2cbce1534cd6db2206f9783ef79f1292"

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it
1. Create your feature branch (`git checkout -b my-new-feature`)
1. Commit your changes (`git add -p ./path/to/files; git commit -m 'Add some feature'`)
1. Push to the branch (`git push origin my-new-feature`)
1. Create new Pull Request

# License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).