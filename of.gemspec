# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'of/version'

Gem::Specification.new do |spec|
  spec.name          = "of"
  spec.version       = Of::VERSION
  spec.authors       = ["Jason Waldrip"]
  spec.email         = ["jason@waldrip.net"]

  spec.summary       = %q{A simple gem to give you n number of objects.}
  spec.description   = %q{A simple gem to give you n number of objects. Maybe the simplist gem ever...}
  spec.homepage      = "https://github.com/jwaldrip/of.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
