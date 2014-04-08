require 'rspec'
require 'bundler/setup'
require "active_record"
require_relative '../lib/adventure'

ActiveRecord::Base.establish_connection adapter: "sqlite3", database: ":memory:"

ActiveRecord::Migration.create_table :pages do |t|
  t.text :content
  t.integer :parent_id
  t.boolean :starting_point, default: false
  t.boolean :conclusion, default: false
end
