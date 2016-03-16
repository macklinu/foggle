# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "foggle/version"

Gem::Specification.new do |spec|
  spec.name          = "foggle"
  spec.version       = Foggle::VERSION
  spec.authors       = ["Macklin Underdown"]
  spec.email         = ["macklinu@gmail.com"]

  spec.summary       = "Environment-based feature toggle Ruby gem"
  spec.homepage      = "https://github.com/macklinu/foggle"
  spec.license       = "MIT"

  # rubocop:disable Metrics/LineLength
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  # rubcop:enable Metrics/LineLength
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 0.38"
  spec.add_development_dependency "yard"
end
