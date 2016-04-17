require 'rack'
require 'rack/server'

class HelloWorldApp
  def self.call(env)
    [200, {}, 'Hello!']
  end
end

Rack::Server.start app: HelloWorldApp


# wrk --connections 4 --duration 30 --threads 4 http://localhost:8080
# Running 30s test @ http://localhost:8080
#   4 threads and 4 connections
#   Thread Stats   Avg      Stdev     Max   +/- Stdev
#     Latency   419.84us  154.18us   9.18ms   95.74%
#     Req/Sec     1.31k   384.63     1.95k    84.55%
#   16336 requests in 30.07s, 0.90MB read
#   Socket errors: connect 0, read 2, write 0, timeout 0
# Requests/sec:    543.32
# Transfer/sec:     30.77KB
