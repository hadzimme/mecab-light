# mecab-light [![Build Status](https://travis-ci.org/hadzimme/mecab-light.png)](https://travis-ci.org/hadzimme/mecab-light)

Use a sequence of results as an Enumerable object.

## Installation

At first, install the official gem "mecab-ruby" manually.

Add this line to your application's Gemfile:

    gem 'mecab-light'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mecab-light

## Usage

```ruby
require 'mecab/light'

tagger = MeCab::Light::Tagger.new
string = 'この文を形態素解析してください。'
result = tagger.parse(string)
result[0].surface #=> "この"
result.map{|morpheme| morpheme.surface }
#=> ["この", "文", "を", "形態素", "解析", "し", "て", "ください", "。"]
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
