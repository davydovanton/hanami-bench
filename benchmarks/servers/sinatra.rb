require 'sinatra'

class HelloWorldApp < Sinatra::Base
  get '/' do
    "Hello"
  end
end

# Running 30s test @ http://localhost:4567
#   4 threads and 4 connections
#   Thread Stats   Avg      Stdev     Max   +/- Stdev
#     Latency     2.48ms    4.70ms 124.24ms   98.86%
#     Req/Sec   464.61     65.16   630.00     91.33%
#   55591 requests in 30.06s, 37.00MB read
#   Non-2xx or 3xx responses: 55591
# Requests/sec:   1849.39
# Transfer/sec:      1.23MB
