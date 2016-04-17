require 'grape'
require 'json'

module App
  class Test < Grape::API
    version 'v1', using: :header, vendor: 'twitter'
    format :json
    prefix :api

    resource :statuses do
      desc ''
      get :public_timeline do
        { hello: 'world' }
      end
    end
  end
end

run App::Test

# Running 30s test @ http://localhost:9292/api/statuses/public_timeline.json
#   4 threads and 4 connections
#   Thread Stats   Avg      Stdev     Max   +/- Stdev
#     Latency     2.87ms    3.73ms  88.15ms   96.20%
#     Req/Sec   406.49     72.55   626.00     81.17%
#   48651 requests in 30.06s, 4.08MB read
# Requests/sec:   1618.24
# Transfer/sec:    139.07KB
