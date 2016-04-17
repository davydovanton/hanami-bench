require 'hanami/router'

run Hanami::Router.new {
  get '/', to: ->(env) { [200, {}, ['Hello']] }
}

# Running 30s test @ http://localhost:9292
#   4 threads and 4 connections
#   Thread Stats   Avg      Stdev     Max   +/- Stdev
#     Latency   785.11us    4.22ms 129.83ms   98.44%
#     Req/Sec     2.48k   481.09     4.31k    86.57%
#   296453 requests in 30.02s, 12.16MB read
# Requests/sec:   9873.92
# Transfer/sec:    414.63KB
