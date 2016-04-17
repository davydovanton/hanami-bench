require 'grape'
require 'json'

module App
  class Test < Grape::API
    version 'v1', using: :header, vendor: 'twitter'
    format :json

    get '/' do
      { hello: 'world' }
    end
  end
end

run App::Test

# Running 30s test @ http://localhost:9292
#   4 threads and 4 connections
#   Thread Stats   Avg      Stdev     Max   +/- Stdev
#     Latency     3.05ms    6.59ms 147.21ms   98.12%
#     Req/Sec   428.71     80.90   720.00     81.32%
#   51248 requests in 30.08s, 4.30MB read
# Requests/sec:   1703.87
# Transfer/sec:    146.43KB
