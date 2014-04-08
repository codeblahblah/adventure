#!/usr/bin/env rake
require "rubygems"
require "bundler/setup"

require 'rspec/core/rake_task'
import './lib/adventure/tasks/adventure.rake'

RSpec::Core::RakeTask.new

desc 'Default: run specs.'
task :default => :spec
