# Adventure

A Ruby gem for a choose your own adventure game.

## Installation

Add this line to your application's Gemfile:

    gem 'adventure', '~> 0.1.0', github: 'drammopo/adventure'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install adventure

## Setup

Require the rake tasks and your app in your `Rakefile`:

```ruby
require "sinatra/activerecord/rake"
require "./app"
```

In the Terminal test that it works:

```sh
$ rake -T
rake db:create                     # create the database from config/database.yml from the current Sinatra env
rake db:create_migration           # create an ActiveRecord migration
rake db:drop                       # drops the data from config/database.yml from the current Sinatra env
rake db:migrate                    # migrate the database (use version with VERSION=n)
rake db:rollback                   # roll back the migration (use steps with STEP=n)
rake db:schema:dump                # dump schema into file
rake db:schema:load                # load schema into database
rake db:seed                       # load the seed data from db/seeds.rb
rake db:setup                      # create the database and load the schema
```

Create the migration:

```sh
$ rake db:create_migration NAME=create_pages
```

This will create a migration file in your migrations directory (`./db/migrate`
by default), ready for editing.

```ruby
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
```

Now migrate the database:

```sh
$ rake db:migrate
```

And that's it, you're all set :)

## Usage

```ruby
page = Page.create(starting_point: true, content: "You wake up on a road. It's foggy and dampy. In your bag is 30 gold pieces and a bacon sandwich. Which do you choose?")

book = Book.new(page)
```

Links
----------

* https://github.com/janko-m/sinatra-activerecord
* https://github.com/janko-m/sinatra-activerecord/wiki/Alternative-database-setup


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
