# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name          = "thanoscase"
  s.version       = "0.0.1"
  s.date          = "2019-04-27"
  s.summary       = "Thanos gem"
  s.description   = "Randomly wipes out half the characters of a string."
  s.authors       = ["Nicolas Sebastian Vidal"]
  s.email         = "nicolas.s.vidal@gmail.com"
  s.homepage      = "https://github.com/nisevi/thanoscase"
  s.bindir        = "bin"
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.license       = "MIT"
  s.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  s.required_ruby_version = ">= 2.5.0"
  s.add_development_dependency "rspec", "~> 3.8"
end
