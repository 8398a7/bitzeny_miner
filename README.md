# bitzeny_miner

## Try

```bash
$ docker run --rm -it 8398a7/bitzeny_miner:latest minerd -a yescrypt -o stratum+tcp://POOL:PORT -u User.Worker -p Password
```

## Build

```bash
$ docker build -t bitzeny_miner:latest .
$ docker run --rm -it bitzeny_miner:latest minerd -a yescrypt -o stratum+tcp://POOL:PORT -u User.Worker -p Password
```