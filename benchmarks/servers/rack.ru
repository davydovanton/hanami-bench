app = proc do |env|
  [ 200, {}, ["Hello"] ]
end

run app

# Running 30s test @ http://localhost:9292
#   4 threads and 4 connections
#   Thread Stats   Avg      Stdev     Max   +/- Stdev
#     Latency   691.76us    3.83ms 123.37ms   98.46%
#     Req/Sec     3.00k   682.07     7.33k    83.33%
#   358454 requests in 30.03s, 14.70MB read
# Requests/sec:  11937.63
# Transfer/sec:    501.29KB
