require 'sinatra/base'

class HelloWorld < Sinatra::Base
  get '/' do
    'Hello World!'
  end
end

run HelloWorld

# Running 30s test @ http://localhost:9292
#   4 threads and 4 connections
#   Thread Stats   Avg      Stdev     Max   +/- Stdev
#     Latency     1.90ms    3.62ms  92.33ms   97.05%
#     Req/Sec   697.10    148.66     1.11k    77.73%
#   83367 requests in 30.10s, 14.71MB read
# Requests/sec:   2769.71
# Transfer/sec:    500.40KB
