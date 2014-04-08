require 'adventure'
require 'rails'
module Adventure
  class Railtie < Rails::Railtie
    railtie_name :adventure

    rake_tasks do
      load "tasks/adventure.rake"
    end
  end
end
