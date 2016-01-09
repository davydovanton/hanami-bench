require 'lotus/utils/string'

COUNT = 10_000

COUNT.times do
  Lotus::Utils::String.new('lotus_utils').classify
end
