# Adventure

A Ruby gem for a choose your own adventure game.

## Installation

Add this line to your application's Gemfile:

    gem 'adventure'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install adventure

## Usage

```ruby
page = Page.create(starting_point: true, content: "You wake up on a road. It's foggy and dampy. In your bag is 30 gold pieces and a bacon sandwich. Which do you choose?")

book = Book.new(page)
```

Show Links
----------

* https://github.com/janko-m/sinatra-activerecord
* https://github.com/janko-m/sinatra-activerecord/wiki/Alternative-database-setup


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
