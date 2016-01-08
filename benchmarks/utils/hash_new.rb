require 'lotus/utils/hash'

COUNT = 10_000

COUNT.times do
  Lotus::Utils::Hash.new {|h,k| h[k] = [] }
end
