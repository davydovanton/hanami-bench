require 'lotus/utils/kernel'

COUNT = 10_000

COUNT.times do
  Lotus::Utils::Kernel.Array([1, [2, nil, 1]])
end
