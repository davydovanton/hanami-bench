require 'lotus/utils/escape'

COUNT = 10_000

COUNT.times do
  evil_input = "javascript:alert('xss')"
  Lotus::Utils::Escape.url(evil_input)
end
