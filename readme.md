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
