require 'lotus/utils/string'

COUNT = 10_000

string = Lotus::Utils::String.new 'Lotus::(Utils|App)'

COUNT.times do
  string.tokenize { |token| token }
end
