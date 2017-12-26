# bitzeny_miner

```bash
$ docker build -t bitzeny_miner:latest .
$ docker run --rm -it bitzeny_miner:latest minerd -a yescrypt -o stratum+tcp://POOL:PORT -u User.Worker -p Password
```