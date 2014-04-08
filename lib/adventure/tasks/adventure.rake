namespace :adventure do
  desc "migrate the database"
  task :migrate do
    puts "Running migrations."
  end

  desc "load the seed data from db/seeds.rb"
  task :seed do
    puts "Seeding data."
  end
end
