require 'json'
require 'sinatra/base'

class HelloWorld < Sinatra::Base
  get '/' do
    ::JSON.generate(hello: 'world')
  end
end

run HelloWorld

# Running 30s test @ http://localhost:9292/
#   4 threads and 4 connections
#   Thread Stats   Avg      Stdev     Max   +/- Stdev
#     Latency     2.23ms    6.98ms 177.23ms   98.09%
#     Req/Sec   689.91    133.71     1.32k    85.48%
#   82417 requests in 30.09s, 14.93MB read
# Requests/sec:   2739.28
# Transfer/sec:    508.28KB
