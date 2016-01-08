require 'lotus/utils/attributes'

COUNT = 10_000


COUNT.times do
  Lotus::Utils::Attributes.new(a: 1, b: { 2 => [3, 4] })
end
