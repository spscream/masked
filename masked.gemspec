# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'masked/version'

Gem::Specification.new do |spec|
  spec.name          = "masked"
  spec.version       = Masked::VERSION
  spec.authors       = ["Alexander Malaev"]
  spec.email         = ["scream@spuge.net"]
  spec.summary       = %q{Gem to apply specified mask to given string.}
  spec.description   = %q{This gem based on test task for scalex company. I made a small library and rails helpers.}
  spec.homepage      = "http://github.com/spscream/masked"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
