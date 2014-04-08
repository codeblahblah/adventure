# -*- encoding: utf-8 -*-
require File.expand_path('../lib/adventure/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["drammopo"]
  gem.email         = ["user@example.com"]
  gem.description   = %q{Implement the Episode 5 Adventure app as a gem}
  gem.summary       = %q{Creating adventures using data access}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "adventure"
  gem.require_paths = ["lib"]
  gem.version       = Adventure::VERSION

  # specify any dependencies here; for example:
  gem.add_development_dependency "rspec"
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'activesupport'
  gem.add_development_dependency 'activerecord'
  gem.add_development_dependency 'sqlite3'
end
