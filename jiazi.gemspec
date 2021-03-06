# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jiazi/version'

Gem::Specification.new do |spec|
  spec.name          = "jiazi"
  spec.version       = Jiazi::VERSION
  spec.authors       = ["zxlai"]
  spec.email         = ["garylai1990@gmail.com"]
  spec.summary       = %q{Generate Chinese fake data.}
  spec.description   = %q{Generate Chinese fake data.}
  spec.homepage      = "https://github.com/Jungllle/jiazi"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 1.9.3"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
