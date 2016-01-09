require 'lotus/utils/string'

COUNT = 10_000

COUNT.times do
  Lotus::Utils::String.new('Lotus::Utils::String').demodulize
end
