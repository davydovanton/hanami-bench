require 'hanami/model'
require 'hanami/mailer'
Dir["#{ __dir__ }/hanami_test/**/*.rb"].each { |file| require_relative file }

# Hanami::Model.configure do
#   ##
#   # Database adapter
#   #
#   # Available options:
#   #
#   #  * File System adapter
#   #    adapter type: :file_system, uri: 'file:///db/bookshelf_development'
#   #
#   #  * Memory adapter
#   #    adapter type: :memory, uri: 'memory://localhost/hanami_test_development'
#   #
#   #  * SQL adapter
#   #    adapter type: :sql, uri: 'sqlite://db/hanami_test_development.sqlite3'
#   #    adapter type: :sql, uri: 'postgres://localhost/hanami_test_development'
#   #    adapter type: :sql, uri: 'mysql://localhost/hanami_test_development'
#   #
#   # adapter type: :file_system, uri: ENV['DATABASE_URL']
#
#   ##
#   # Database mapping
#   #
#   # Intended for specifying application wide mappings.
#   #
#   mapping do
#     # collection :users do
#     #   entity     User
#     #   repository UserRepository
#     #
#     #   attribute :id,   Integer
#     #   attribute :name, String
#     # end
#   end
# end.load!

Hanami::Mailer.configure do
  root "#{ __dir__ }/hanami_test/mailers"

  # See http://hanamirb.org/guides/mailers/delivery
  delivery do
    development :test
    test        :test
    # production :stmp, address: ENV['SMTP_PORT'], port: 1025
  end
end.load!
