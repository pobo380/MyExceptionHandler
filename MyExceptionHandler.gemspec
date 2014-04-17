# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'MyExceptionHandler/version'

Gem::Specification.new do |spec|
  spec.name          = "MyExceptionHandler"
  spec.version       = MyExceptionHandler::VERSION
  spec.authors       = ["pobo380"]
  spec.email         = ["n3560k@gmail.com"]
  spec.summary       = %q{ExceptionHandler for Rack Application}
  spec.description   = %q{ExceptionHandler for Rack Application}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rack-test"

  spec.add_dependency "rack"
end
