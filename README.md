# How to run

docker pull python:3.12.9 

time docker build -t poetry-bench:0.1 .

Ex result on MBP 2019 32GB

docker build -t poetry-bench:0.1 .  1,99s user 1,49s system 0% cpu 14:40,58 total

Ex : result on Linux Ubuntu 20.04 LTS x86_64

docker build --no-cache -t poetry-bench:0.1 .  1,27s user 0,62s system 0% cpu 8:08,23 total