# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hmac_signature/version'

Gem::Specification.new do |spec|
  spec.name          = 'hmac_signature'
  spec.version       = HmacSignature::VERSION
  spec.authors       = ['Teamsquare Pty. Ltd.']
  spec.email         = ['hello@teamsquare.co']

  spec.summary       = %q{HMAC signature generator used for communication between the Teamsquare LDAP gateway and API.}
  spec.description   = %q{HMAC signature generator used for communication between the Teamsquare LDAP gateway and API.}
  spec.homepage      = 'https://teamsquare.co'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'gibberish'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'simplecov', '~> 0.7.1'
end