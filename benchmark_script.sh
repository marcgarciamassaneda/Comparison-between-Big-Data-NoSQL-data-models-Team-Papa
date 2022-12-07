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
sleep 20
cd ..
mkdir results_redis
./bin/ycsb load redis -s -P workloads/workloada -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_a1.txt
./bin/ycsb run redis -s -P workloads/workloada -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_a1.txt
./bin/ycsb load redis -s -P workloads/workloada -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_a2.txt
./bin/ycsb run redis -s -P workloads/workloada -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_a2.txt
./bin/ycsb load redis -s -P workloads/workloada -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_a3.txt
./bin/ycsb run redis -s -P workloads/workloada -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_a3.txt

./bin/ycsb load redis -s -P workloads/workloadb -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_b1.txt
./bin/ycsb run redis -s -P workloads/workloadb -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_b1.txt
./bin/ycsb load redis -s -P workloads/workloadb -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_b2.txt
./bin/ycsb run redis -s -P workloads/workloadb -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_b2.txt
./bin/ycsb load redis -s -P workloads/workloadb -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_b3.txt
./bin/ycsb run redis -s -P workloads/workloadb -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_b3.txt

./bin/ycsb load redis -s -P workloads/workloadc -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_c1.txt
./bin/ycsb run redis -s -P workloads/workloadc -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_c1.txt
./bin/ycsb load redis -s -P workloads/workloadc -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_c2.txt
./bin/ycsb run redis -s -P workloads/workloadc -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_c2.txt
./bin/ycsb load redis -s -P workloads/workloadc -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_c3.txt
./bin/ycsb run redis -s -P workloads/workloadc -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_c3.txt

./bin/ycsb load redis -s -P workloads/workloadd -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_d1.txt
./bin/ycsb run redis -s -P workloads/workloadd -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_d1.txt
./bin/ycsb load redis -s -P workloads/workloadd -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_d2.txt
./bin/ycsb run redis -s -P workloads/workloadd -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_d2.txt
./bin/ycsb load redis -s -P workloads/workloadd -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_d3.txt
./bin/ycsb run redis -s -P workloads/workloadd -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_d3.txt

./bin/ycsb load redis -s -P workloads/workloade -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_e1.txt
./bin/ycsb run redis -s -P workloads/workloade -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_e1.txt
./bin/ycsb load redis -s -P workloads/workloade -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_e2.txt
./bin/ycsb run redis -s -P workloads/workloade -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_e2.txt
./bin/ycsb load redis -s -P workloads/workloade -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_e3.txt
./bin/ycsb run redis -s -P workloads/workloade -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_e3.txt

./bin/ycsb load redis -s -P workloads/workloadf -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_f1.txt
./bin/ycsb run redis -s -P workloads/workloadf -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_f1.txt
./bin/ycsb load redis -s -P workloads/workloadf -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_f2.txt
./bin/ycsb run redis -s -P workloads/workloadf -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_f2.txt
./bin/ycsb load redis -s -P workloads/workloadf -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputLoad_f3.txt
./bin/ycsb run redis -s -P workloads/workloadf -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" > results_redis/outputRun_f3.txt

cd database
sleep 1
sudo docker-compose -f docker-compose-redis.yml down
