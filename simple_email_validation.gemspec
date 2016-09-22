# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_email_validation/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_email_validation"
  spec.version       = SimpleEmailValidation::VERSION
  spec.authors       = ["ryosuke-endo"]
  spec.email         = ["frozen_faithjp2@yahoo.co.jp"]

  spec.summary       = %q{To comply with simple email validation to RFC5322.}
  spec.description   = %q{To comply with simple email validation to RFC5322.}
  spec.homepage      = "https://github.com/ryosuke-endo/simple_email_validation"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "pry-byebug", "~> 3.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency "activemodel"
end
