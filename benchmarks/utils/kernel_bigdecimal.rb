require 'lotus/utils/kernel'

COUNT = 10_000

COUNT.times do
  Lotus::Utils::Kernel.BigDecimal("1")
end
