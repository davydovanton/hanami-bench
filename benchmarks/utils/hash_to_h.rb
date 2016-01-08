require 'lotus/utils/hash'

COUNT = 10_000

hash = Lotus::Utils::Hash.new a: 23, b: { c: ['x','y','z'] }

COUNT.times do
  hash.to_h
end
