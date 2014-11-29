[![Build Status](https://travis-ci.org/Jungllle/jiazi.svg?branch=master)](https://travis-ci.org/Jungllle/jiazi)
[![Coverage Status](https://coveralls.io/repos/Jungllle/jiazi/badge.png)](https://coveralls.io/r/Jungllle/jiazi)

# Jiazi

Generate Chinese fake data.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jiazi'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jiazi

## Usage

```
Jiazi.title
# You will get a Chinese sentence which include 10 to 20 characters in an array.
Jiazi.paragraph
# You will get a Chinese sentence which include 400 to 500 characters in an array.
Jiazi.custom 10, 30, 50 # Jiazi.custom sentences, mix, max
# You will get 10 Chinese sentences which include 30 to 50 characters in an array. The default parameters are 1, 10 ,20.
```

## Source

```
The source of this gem is from [MORETEXT](http://more.handlino.com/)
```

## Contributing

1. Fork it ( https://github.com/Jungllle/jiazi/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
