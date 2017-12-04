# Pecan

@TODO

## Installation

If you don't have ruby on your machine you need to install it first. On Debian you can use:

```
$ apt-get install ruby
```

Than you just need to type: 
```
$ gem install pecan
```

To check that everything went fine use:
```
$ pecan -v
``` 

## Usage

Use `pecan -h` to find usage guideline.

```
Usage: pecan [options]
    -v, --version                    Shows version
    -h, --help                       Prints this help
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## License

The gem is available as open source under the terms of the Apache-2.0 License
