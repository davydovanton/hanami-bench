# Results
All servers called with puma:

    puma benchmarks/servers/*.ru

For benchmarking I used wrk tool:

    wrk --connections 4 --duration 30 --threads 4 http://localhost:9292

### Rack
[Link](https://github.com/davydovanton/hanami-bench/blob/master/benchmarks/servers/rack.ru)

```
Running 30s test @ http://localhost:9292
  4 threads and 4 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   691.76us    3.83ms 123.37ms   98.46%
    Req/Sec     3.00k   682.07     7.33k    83.33%
  358454 requests in 30.03s, 14.70MB read
Requests/sec:  11937.63
Transfer/sec:    501.29KB
```


### Hanami simple
[Link](https://github.com/davydovanton/hanami-bench/blob/master/benchmarks/servers/hanami_simple.ru)

```
Running 30s test @ http://localhost:9292
  4 threads and 4 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   785.11us    4.22ms 129.83ms   98.44%
    Req/Sec     2.48k   481.09     4.31k    86.57%
  296453 requests in 30.02s, 12.16MB read
Requests/sec:   9873.92
Transfer/sec:    414.63KB
```

### sinatra
[Link](https://github.com/davydovanton/hanami-bench/blob/master/benchmarks/servers/sinatra.ru)

```
Running 30s test @ http://localhost:9292
  4 threads and 4 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.90ms    3.62ms  92.33ms   97.05%
    Req/Sec   697.10    148.66     1.11k    77.73%
  83367 requests in 30.10s, 14.71MB read
Requests/sec:   2769.71
Transfer/sec:    500.40KB
```

### Sinatra JSON
[Link](https://github.com/davydovanton/hanami-bench/blob/master/benchmarks/servers/sinatra_json.ru)

```
Running 30s test @ http://localhost:9292/
  4 threads and 4 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     2.23ms    6.98ms 177.23ms   98.09%
    Req/Sec   689.91    133.71     1.32k    85.48%
  82417 requests in 30.09s, 14.93MB read
Requests/sec:   2739.28
Transfer/sec:    508.28KB
```

### Hanami JSON
[Link](https://github.com/davydovanton/hanami-bench/blob/master/benchmarks/servers/hanami_json.ru)

```
Running 30s test @ http://localhost:9292
  4 threads and 4 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.49ms    4.53ms 117.91ms   97.70%
    Req/Sec     1.04k   192.85     1.68k    87.33%
  123943 requests in 30.03s, 11.35MB read
Requests/sec:   4127.34
Transfer/sec:    386.94KB
```

### Grape JSON
[Link](https://github.com/davydovanton/hanami-bench/blob/master/benchmarks/servers/grape_json.ru)

```
Running 30s test @ http://localhost:9292
  4 threads and 4 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     3.05ms    6.59ms 147.21ms   98.12%
    Req/Sec   428.71     80.90   720.00     81.32%
  51248 requests in 30.08s, 4.30MB read
Requests/sec:   1703.87
Transfer/sec:    146.43KB
```

### Rails JSON
[Link](https://github.com/davydovanton/hanami-bench/blob/master/benchmarks/servers/rails_json.ru)

```
Running 30s test @ http://localhost:9292
  4 threads and 4 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     3.69ms    4.82ms 127.58ms   98.10%
    Req/Sec   302.97     49.37   450.00     84.65%
  36215 requests in 30.05s, 7.98MB read
Requests/sec:   1205.25
Transfer/sec:    271.91KB
```

### Hanami view
[Link](https://github.com/davydovanton/hanami-bench/blob/master/benchmarks/servers/hanami_view.ru)

```
Running 30s test @ http://localhost:9292
  4 threads and 4 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.74ms    5.60ms 143.28ms   98.08%
    Req/Sec     0.90k   188.63     1.51k    80.05%
  107126 requests in 30.07s, 8.68MB read
Requests/sec:   3562.98
Transfer/sec:    295.76KB
```

### Rails view
[Link](https://github.com/davydovanton/hanami-bench/blob/master/benchmarks/servers/rails_view.ru)

```
Running 30s test @ http://localhost:9292
  4 threads and 4 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     3.79ms    3.03ms  76.43ms   97.23%
    Req/Sec   282.46     42.26   404.00     89.17%
  33796 requests in 30.05s, 7.06MB read
Requests/sec:   1124.59
Transfer/sec:    240.53KB
```

### Full hanami app
#### Api url
```
Running 30s test @ http://localhost:9292/api
  4 threads and 4 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     6.40ms    8.19ms 168.87ms   96.61%
    Req/Sec   184.99     41.43   343.00     80.22%
  22142 requests in 30.10s, 22.22MB read
Requests/sec:    735.54
Transfer/sec:    755.69KB
```

#### Web url
```
Running 30s test @ http://localhost:9292/web
  4 threads and 4 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     6.70ms    5.42ms  90.15ms   93.64%
    Req/Sec   164.31     40.27   340.00     73.96%
  19676 requests in 30.09s, 3.90MB read
  Non-2xx or 3xx responses: 19676
Requests/sec:    653.92
Transfer/sec:    132.83KB
```

### Full rails app
#### Api url
```
Running 30s test @ http://localhost:9292/api
  4 threads and 4 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    11.76ms   11.69ms 217.13ms   95.75%
    Req/Sec    96.85     21.87   131.00     73.59%
  11554 requests in 30.07s, 4.18MB read
Requests/sec:    384.22
Transfer/sec:    142.21KB
```

#### Web url
```
Running 30s test @ http://localhost:9292/web
  4 threads and 4 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    75.34ms   28.20ms 400.74ms   92.00%
    Req/Sec    13.43      5.12    30.00     57.24%
  1631 requests in 30.08s, 3.33MB read
Requests/sec:     54.22
Transfer/sec:    113.20KB
```
