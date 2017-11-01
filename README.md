# SameBoat
Sameboat is monitoring forgetting to add something to environment variables (or some files).

For example, add `AWESOME_VALUE=true` to .env.development during development.

It is at deploy time that you notice that you forgot to add it to .env.preview

SameBoat supports to check it in advance.

The procedure is as follows
1. Create the latest file stamp of the .env group
2. Update a part of .env group
3. Check if the file stamp of the .env group is latest

SameBoat hope 3 will be done at your CI.

The command option is somewhat special.

glossary | option name
--- | ---
files | `-c --crews`
file stamp | `-j --journal`

Because they are in the same boat.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'same_boat'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install same_boat

## Usage

```ruby
# Rakefile
require 'same_boat/tasks'
```

### update journal to latest
`$ rake same_boat:journal` 

### be in the same boat 
`$ rake same_boat:row`

### specify crews or journal
```
$ rake same_boat:journal -c path/to/.env* -j path/to/.some.journal
$ rake same_boat:row -c path/to/.env* -j path/to/.some.journal

```



## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/same_boat. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SameBoat project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/same_boat/blob/master/CODE_OF_CONDUCT.md).
