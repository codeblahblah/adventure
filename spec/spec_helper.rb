require 'rspec'
require 'bundler/setup'
require_relative '../db/setup'
Dir.glob('./models/*').each { |r| require r}
require_relative '../db/seed'
