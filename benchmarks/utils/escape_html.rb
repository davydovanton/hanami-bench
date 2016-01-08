require 'lotus/utils/escape'

COUNT = 10_000

COUNT.times do
  Lotus::Utils::Escape.html('<script>alert(1);</script>')
end
