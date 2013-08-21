# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'server_side_ga/version'

Gem::Specification.new do |spec|
  spec.name          = "server_side_ga"
  spec.version       = ServerSideGa::VERSION
  spec.authors       = ["James Kennedy"]
  spec.email         = ["james@jameskennedy.ie"]
  spec.description   = %q{A wrapper for the Universal Analytics API}
  spec.summary       = %q{You can call ServerSideGa.event(category, action, client_id) to call}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "rest-client"
end
