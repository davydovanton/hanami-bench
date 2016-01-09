require 'lotus/utils/string'

COUNT = 10_000

string = Lotus::Utils::String.new('authors/books/index')

COUNT.times do
  string.rsub(/\//, '#')
end
