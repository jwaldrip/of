# Of

A simple gem to give you ***n*** number of objects.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'of'
```

And then execute:
```sh
$ bundle
```

Or install it yourself as:
```sh
$ gem install of
```

## Basic Usage

### Block Syntax
```ruby
def 7_of_9
  7.of { 9 } # => [9, 9, 9, 9, 9, 9, 9, 9]
end
```

### Class Syntax
```ruby
def 3_objects
  3.of(Object) # => [#<Object:0x007fb0db8b75c0>, #<Object:0x007fb0db8b7548>, #<Object:0x007fb0db8b74f8>]
end
```

## Usage with Refinements

use the following in the gemfile:

```ruby
# Gemfile
# ...
gem 'of', require: 'of/refinements'
```

and then use the refinement:

```ruby
class MyClass
  using Of

  def 7_of_9
    7.of { 9 } # => [9, 9, 9, 9, 9, 9, 9, 9]
  end

end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/of/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
