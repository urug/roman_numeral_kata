# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'roman_numeral_kata/version'

Gem::Specification.new do |spec|
  spec.name          = "roman_numeral_kata"
  spec.version       = RomanNumeralKata::VERSION
  spec.authors       = ["hqmq"]
  spec.email         = ["michael@riesd.com"]
  spec.summary       = "A testbench gem for practicing the roman numeral kata"
  spec.description   = spec.summary
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec-given", "~> 3.5.4"
end
