# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'thanoscase/version'

Gem::Specification.new do |s|
  s.name          = 'thanoscase'
  s.version       = Thanoscase::VERSION
  s.date          = '2019-04-27'
  s.summary       = 'Thanos gem'
  s.description   = 'Randomly removes half the characters of a given string.'
  s.authors       = ['Nicolas Sebastian Vidal']
  s.email         = 'nicolas.s.vidal@gmail.com'
  s.homepage      = 'https://github.com/nisevi/thanoscase'
  s.bindir        = 'bin'
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.require_paths = ['lib']
  s.license       = 'MIT'
  s.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  s.required_ruby_version = '>= 2.7.1'

  s.add_development_dependency 'bundler', '~> 2.1', '>= 2.1.4'
  s.add_development_dependency 'byebug', '~> 11.1', '>= 11.1.3'
  s.add_development_dependency 'rspec', '~> 3.9'
  s.add_development_dependency 'rubocop', '~> 0.86.0'
  s.add_development_dependency 'simplecov', '~> 0.17.1'
end
