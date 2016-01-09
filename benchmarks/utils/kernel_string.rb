require 'lotus/utils/kernel'

COUNT = 10_000

COUNT.times do
  Lotus::Utils::Kernel.String(%w[a b c])
  Lotus::Utils::Kernel.String({a: 1, 'b' => 'c'})
  Lotus::Utils::Kernel.String(Date.today)
end
