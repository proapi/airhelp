require File.expand_path('../lib/airhelp/version', __FILE__)

Gem::Specification.new do |s|
  s.name         = 'airhelp'
  s.version      = Airhelp::VERSION
  s.date         = '2015-10-28'
  s.summary      = "Airhelp test gem"
  s.description  = "Testing gem creation for airhelp test"
  s.executables  = 'airhelp'
  s.authors      = ['Michał Pawelski']
  s.email        = 'kontakt@proapi.eu'
  s.files        = `git ls-files`.split("\n")
  s.homepage     = 'http://github.com/proapi/airhelp'
  s.license      = 'MIT'
  s.require_path = "lib"

  s.required_ruby_version     = '>= 1.9.3'

  s.add_dependency 'bundler', '>= 1.10.0', '< 2.0'
  s.add_dependency 'activemodel', '~> 4.2'
  s.add_dependency 'thor', '~> 0.19'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rake'
end
