require 'pg'
require 'active_record'
require 'yaml'

namespace :adventure do
  desc "migrate the database"
  task :migrate do
    puts "Running migrations."
    connection_details = YAML::load(File.open('config/database.yml'))
    ActiveRecord::Base.establish_connection(connection_details.merge({'database'=> 'postgres', 'schema_search_path'=> 'public'}))
    ActiveRecord::Base.connection.drop_database (connection_details.fetch('database')) rescue nil
    ActiveRecord::Base.connection.create_database(connection_details.fetch('database')) rescue nil
    ActiveRecord::Base.establish_connection(connection_details)
    ActiveRecord::Migrator.migrate("db/migrate/")
  end

  desc "load the seed data from db/seeds.rb"
  task :seed do
    puts "Seeding data."
  end
end
