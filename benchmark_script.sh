#!/bin/bash
sudo apt update
sudo apt install default-jre -y
sudo apt install default-jdk -y
sudo apt update
sudo apt install maven -y
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" -y
apt-cache policy docker-ce
sudo apt install docker-ce -y
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
curl -O --location https://github.com/brianfrankcooper/YCSB/releases/download/0.17.0/ycsb-0.17.0.tar.gz
tar xfvz ycsb-0.17.0.tar.gz
cd ycsb-0.17.0
mkdir database
cd database
mv ~/Comparison-between-Big-Data-NoSQL-data-models-Team-Papa/docker-compose-redis.yml .
sudo apt install python2 -y
sudo update-alternatives --install /usr/bin/python python /usr/bin/python2 1
sudo docker-compose -f docker-compose-redis.yml up &
cd ..
mkdir results_redis
./bin/ycsb load redis -s -P workloads/workloada -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_1a.txt
./bin/ycsb run redis -s -P workloads/workloada -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_1a.txt
./bin/ycsb load redis -s -P workloads/workloada -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_2a.txt
./bin/ycsb run redis -s -P workloads/workloada -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_2a.txt
./bin/ycsb load redis -s -P workloads/workloada -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_3a.txt
./bin/ycsb run redis -s -P workloads/workloada -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_3a.txt

./bin/ycsb load redis -s -P workloads/workloadb -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_1b.txt
./bin/ycsb run redis -s -P workloads/workloadb -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_1b.txt
./bin/ycsb load redis -s -P workloads/workloadb -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_2b.txt
./bin/ycsb run redis -s -P workloads/workloadb -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_2b.txt
./bin/ycsb load redis -s -P workloads/workloadb -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_3b.txt
./bin/ycsb run redis -s -P workloads/workloadb -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_3b.txt

./bin/ycsb load redis -s -P workloads/workloadc -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_1c.txt
./bin/ycsb run redis -s -P workloads/workloadc -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_1c.txt
./bin/ycsb load redis -s -P workloads/workloadc -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_2c.txt
./bin/ycsb run redis -s -P workloads/workloadc -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_2c.txt
./bin/ycsb load redis -s -P workloads/workloadc -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_3c.txt
./bin/ycsb run redis -s -P workloads/workloadc -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_3c.txt

./bin/ycsb load redis -s -P workloads/workloadd -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_1d.txt
./bin/ycsb run redis -s -P workloads/workloadd -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_1d.txt
./bin/ycsb load redis -s -P workloads/workloadd -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_2d.txt
./bin/ycsb run redis -s -P workloads/workloadd -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_2d.txt
./bin/ycsb load redis -s -P workloads/workloadd -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_3d.txt
./bin/ycsb run redis -s -P workloads/workloadd -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_3d.txt

./bin/ycsb load redis -s -P workloads/workloade -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_1e.txt
./bin/ycsb run redis -s -P workloads/workloade -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_1e.txt
./bin/ycsb load redis -s -P workloads/workloade -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_2e.txt
./bin/ycsb run redis -s -P workloads/workloade -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_2e.txt
./bin/ycsb load redis -s -P workloads/workloade -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_3e.txt
./bin/ycsb run redis -s -P workloads/workloade -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_3e.txt