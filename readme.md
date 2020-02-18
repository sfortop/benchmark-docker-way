## Simple benchmark php-fpm + nginx

Bencmark communication method socket vs tcp

to run bencmark

### Install

```bash
git clone git@github.com:sfortop/benchmark-docker-way.git
```

### Run

To benchmark _tcp_ method communication 
```bash
cd benchmark-docker-way
./benchmark.sh separate
```
To benchmark _unix socket_ method communication 
```bash
cd benchmark-docker-way
./benchmark.sh single
```

## Conclusion

Yep, it's mostly useless incomplete benchmark. For real app u will got other numbers which can completely change the conclusions.

If you can improve benchmark pull requests are welcome.

Nginx and php-fpm - 2 separate docker containers

```
wrk -c 50 -t 8 -R 100000 http://127.0.0.1:8080
Running 10s test @ http://127.0.0.1:8080
8 threads and 50 connections
Thread Stats Avg Stdev Max +/- Stdev
Latency 4.57s 2.64s 9.18s 57.39%
Req/Sec -nan -nan 0.00 0.00%
80994 requests in 10.00s, 51.75MB read
Requests/sec: 8098.92
Transfer/sec: 5.17MB
```
Nginx and php-fpm - single container
```
wrk -c 50 -t 8 -R 100000 http://127.0.0.1:8080
Running 10s test @ http://127.0.0.1:8080
8 threads and 50 connections
Thread Stats Avg Stdev Max +/- Stdev
Latency 3.99s 2.37s 8.29s 58.11%
Req/Sec -nan -nan 0.00 0.00%
170753 requests in 10.00s, 107.96MB read
Requests/sec: 17076.82
Transfer/sec: 10.80MB
```
