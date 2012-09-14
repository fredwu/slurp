# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'slurp/version'

Gem::Specification.new do |gem|
  gem.name          = "slurp"
  gem.version       = Slurp::VERSION
  gem.authors       = ["Vasily Mikhaylichenko"]
  gem.email         = ["vasily.mikhaylichenko@gmail.com"]
  gem.description   = %q{Switch to an in-memory sqlite database in Rails on demand}
  gem.summary       = %q{Speed up your tests without touching database.yml}
  gem.homepage      = "http://github.com/vaskas/slurp"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'rails'
  gem.add_dependency 'sqlite3'

  gem.add_development_dependency 'pry'
end
