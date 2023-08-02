[![CI](https://github.com/ushachev/ipgeobase/actions/workflows/main.yml/badge.svg)](https://github.com/ushachev/ipgeobase/actions/workflows/main.yml)

# Ipgeobase

Allows you to receive information by IP - for example, country, city, coordinates.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add ipgeobase --github=https://github.com/ushachev/ipgeobase.git

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install specific_install
    $ gem specific_install https://github.com/ushachev/ipgeobase.git

## Usage

```ruby
ip_meta = Ipgeobase.lookup('8.8.8.8')

ip_meta.city # Ashburn
ip_meta.country # United States
ip_meta.countryCode # US
ip_meta.lat # 39.03
ip_meta.lon # -77.5
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ushachev/ipgeobase.
