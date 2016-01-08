require 'lotus/utils/escape'

COUNT = 10_000

COUNT.times do
  Lotus::Utils::Escape.html_attribute('<script>alert(1);</script>')
end
