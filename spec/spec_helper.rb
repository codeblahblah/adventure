require 'rspec'
require 'bundler/setup'
require "sinatra/activerecord"
require_relative '../lib/adventure'

ActiveRecord::Base.establish_connection adapter: "sqlite3", database: ":memory:"

class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :content
      t.integer :parent_id
      t.boolean :starting_point, default: false
      t.boolean :conclusion, default: false
    end
  end
end
