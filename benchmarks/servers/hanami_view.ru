require 'hanami'

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
        end
      end
    end
  end

  module Views
    module Home
      class Index
        include Hanami::View
        template 'home/index'
      end
    end
  end
end

run OneFile::Application.new

# Running 30s test @ http://localhost:9292
#   4 threads and 4 connections
#   Thread Stats   Avg      Stdev     Max   +/- Stdev
#     Latency     1.74ms    5.60ms 143.28ms   98.08%
#     Req/Sec     0.90k   188.63     1.51k    80.05%
#   107126 requests in 30.07s, 8.68MB read
# Requests/sec:   3562.98
# Transfer/sec:    295.76KB
