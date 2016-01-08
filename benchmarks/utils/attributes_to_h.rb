require 'lotus/utils/attributes'

COUNT = 10_000

attributes = Lotus::Utils::Attributes.new(a: 1, b: { 2 => [3, 4] })

COUNT.times do
  attributes.to_h
end
