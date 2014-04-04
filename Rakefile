#!/usr/bin/env rake
require "rubygems"
require "bundler/setup"

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new

desc 'Default: run specs.'
task :default => :spec

namespace :adventure do

  desc "Tell me the version of the gem"
    task :version do
    	puts "You're using version {} of the gem."
    end

  desc "Migrates database"
    task :migrate do
    puts "Migrating development database"
      require_relative './db/setup'
      ActiveRecord::Migration.verbose = ENV["VERBOSE"] ? ENV["VERBOSE"] == "true" : true
      ActiveRecord::Migrator.migrate("/db/migrate/", '001')
  end

  desc "Seeds database"
    task :seed do
    puts "Seeding development database"
    Rake::Task["seed"].invoke
  end
end
