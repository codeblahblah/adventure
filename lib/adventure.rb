require 'active_record'
require_relative 'adventure/version'
require_relative 'adventure/models/book'
require_relative 'adventure/models/page'

module Adventure
  def self.version_string
    "Adventure version #{Adventure::VERSION}"
  end
end
