require 'lotus/utils/class'

COUNT = 10_000

module App
  module Service
    class Endpoint
    end
  end

  class ServiceEndpoint
  end
end

COUNT.times do
  Lotus::Utils::Class.load_from_pattern!('App::Service(::Endpoint|Endpoint)')
end
