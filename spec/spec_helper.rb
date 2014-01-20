require 'simplecov'
require 'coveralls'
require 'codeclimate-test-reporter'

Coveralls.wear!
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter,
  CodeClimate::TestReporter::Formatter
]

SimpleCov.start do
  add_filter 'spec'
end

$:.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'mecab/light/morpheme'
require 'mecab/light/result'
require 'mecab/light/tagger'


class MeCab::Light::Binding
end
