# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'teamsquare_hmac_signature/version'

Gem::Specification.new do |spec|
  spec.name          = 'teamsquare_hmac_signature'
  spec.version       = TeamsquareHmacSignature::VERSION
  spec.authors       = ['Teamsquare']
  spec.email         = ['hello@teamsquare.co']

  spec.summary       = %q{Geneates an HMAC signature based on Teamsquare requirements.}
  spec.description   = %q{Built specifically to generate HMAC signatures compatible with the systems used for communication between the ldap_gateway and Teamsquare API.}
  spec.homepage      = 'https://github.com/teamsquare/teamsquare_hmac_signature'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'gibberish'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rspec_junit_formatter', '0.2.2'
  spec.add_development_dependency 'simplecov', '~> 0.7.1'
end