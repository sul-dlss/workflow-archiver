# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)
require 'dor/archiver_version'

Gem::Specification.new do |s|
  s.name        = 'workflow-archiver'
  s.version     = Dor::ARCHIVER_VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Willy Mene']
  s.email       = ['wmene@stanford.edu']
  s.summary     = 'Enables archiving of DOR workflows'
  s.description = 'Can be used standalone or used as a library'

  s.required_rubygems_version = '>= 1.3.6'

  # Runtime dependencies
  s.add_dependency 'lyber-core'
  s.add_dependency 'faraday'
  s.add_dependency 'sequel'
  s.add_dependency 'confstruct'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'sqlite3'

  s.files        = Dir.glob('lib/**/*') + ['VERSION']
  s.require_path = 'lib'
end
