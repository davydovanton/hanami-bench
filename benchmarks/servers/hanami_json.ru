require 'hanami'
require 'json'

module OneFile
  class Application < Hanami::Application
    configure do
      routes do
        get '/', to: 'home#index'
      end
    end

    load!
  end

  module Controllers
    module Home
      include OneFile::Controller

      class Index
        include OneFile::Action

        def call(params)
          self.body = ::JSON.generate(hello: 'world')
        end
      end
    end
  end
end

run OneFile::Application.new

# Running 30s test @ http://localhost:9292
#   4 threads and 4 connections
#   Thread Stats   Avg      Stdev     Max   +/- Stdev
#     Latency     1.49ms    4.53ms 117.91ms   97.70%
#     Req/Sec     1.04k   192.85     1.68k    87.33%
#   123943 requests in 30.03s, 11.35MB read
# Requests/sec:   4127.34
# Transfer/sec:    386.94KB
