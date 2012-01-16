# encoding: utf-8
require File.expand_path('../lib/omniauth-jazz/version', __FILE__)

Gem::Specification.new do |gem|

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_development_dependency 'rack-test', '~> 0.5'
  gem.add_development_dependency 'rake', '~> 0.8'

  gem.authors = ['Mike Andrzejewski', 'Sylvain Mina']
  gem.description = %q{Jazz strategy for OmniAuth.}
  gem.email = ['mike.aski@free.fr', 'sylvain.mina@gmail.com']
  gem.files = `git ls-files`.split("\n")
  gem.homepage = 'https://github.com/MikeAndrzejewski/omniauth-jazz'
  gem.name = 'omniauth-jazz'
  gem.require_paths = ['lib']
  gem.required_rubygems_version = Gem::Requirement.new('>= 1.3.6') if gem.respond_to? :required_rubygems_version=
  gem.summary = gem.description
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.version = OmniAuth::Jazz::VERSION
end
