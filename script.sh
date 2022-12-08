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
mv ~/Comparison-between-Big-Data-NoSQL-data-models-Team-Papa/docker-compose-mongodb.yml .
mv ~/Comparison-between-Big-Data-NoSQL-data-models-Team-Papa/docker-compose-cassandra.yml .
sudo apt install python2 -y
sudo update-alternatives --install /usr/bin/python python /usr/bin/python2 1

printf "Running benchmarks on Redis"
sudo docker-compose -f docker-compose-redis.yml up &
sleep 30
cd ..
mkdir results_redis
./bin/ycsb load redis -s -P workloads/workloada -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/loadRedisA.txt
./bin/ycsb run redis -s -P workloads/workloada -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/runRedisA.txt
./bin/ycsb load redis -s -P workloads/workloada -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/loadRedisA.txt
./bin/ycsb run redis -s -P workloads/workloada -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/runRedisA.txt
./bin/ycsb load redis -s -P workloads/workloada -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/loadRedisA.txt
./bin/ycsb run redis -s -P workloads/workloada -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/runRedisA.txt

./bin/ycsb load redis -s -P workloads/workloadb -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/loadRedisB.txt
./bin/ycsb run redis -s -P workloads/workloadb -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/runRedisB.txt
./bin/ycsb load redis -s -P workloads/workloadb -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/loadRedisB.txt
./bin/ycsb run redis -s -P workloads/workloadb -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/runRedisB.txt
./bin/ycsb load redis -s -P workloads/workloadb -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/loadRedisB.txt
./bin/ycsb run redis -s -P workloads/workloadb -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/runRedisB.txt

./bin/ycsb load redis -s -P workloads/workloadc -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/loadRedisC.txt
./bin/ycsb run redis -s -P workloads/workloadc -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/runRedisC.txt
./bin/ycsb load redis -s -P workloads/workloadc -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/loadRedisC.txt
./bin/ycsb run redis -s -P workloads/workloadc -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/runRedisC.txt
./bin/ycsb load redis -s -P workloads/workloadc -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/loadRedisC.txt
./bin/ycsb run redis -s -P workloads/workloadc -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/runRedisC.txt

./bin/ycsb load redis -s -P workloads/workloadd -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/loadRedisD.txt
./bin/ycsb run redis -s -P workloads/workloadd -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/runRedisD.txt
./bin/ycsb load redis -s -P workloads/workloadd -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/loadRedisD.txt
./bin/ycsb run redis -s -P workloads/workloadd -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/runRedisD.txt
./bin/ycsb load redis -s -P workloads/workloadd -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/loadRedisD.txt
./bin/ycsb run redis -s -P workloads/workloadd -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/runRedisD.txt

./bin/ycsb load redis -s -P workloads/workloade -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/loadRedisE.txt
./bin/ycsb run redis -s -P workloads/workloade -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/runRedisE.txt
./bin/ycsb load redis -s -P workloads/workloade -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/loadRedisE.txt
./bin/ycsb run redis -s -P workloads/workloade -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/runRedisE.txt
./bin/ycsb load redis -s -P workloads/workloade -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/loadRedisE.txt
./bin/ycsb run redis -s -P workloads/workloade -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/runRedisE.txt

./bin/ycsb load redis -s -P workloads/workloadf -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/loadRedisF.txt
./bin/ycsb run redis -s -P workloads/workloadf -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/runRedisF.txt
./bin/ycsb load redis -s -P workloads/workloadf -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/loadRedisF.txt
./bin/ycsb run redis -s -P workloads/workloadf -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/runRedisF.txt
./bin/ycsb load redis -s -P workloads/workloadf -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/loadRedisF.txt
./bin/ycsb run redis -s -P workloads/workloadf -p "redis.host=$(hostname -I | cut -d ' ' -f 1)" -p "redis.port=6379" -p "redis.cluster=true" >> results_redis/runRedisF.txt

cd database
sleep 100
sudo docker-compose -f docker-compose-redis.yml down
sleep 100

printf "Running benchmarks on Mongo"
docker-compose -f docker-compose-mongodb.yml up & sleep 30
cd ..
mkdir results_mongo
for i in {1..3}
do
./bin/ycsb load mongodb -s -P workloads/workloada \
 -p recordcount=1000 \ 
 -p mongodb.upsert=true \ 
 -p mongodb.url=mongodb://mongo1:30001,mongo2:30002,mongo3:30003,mongo4:30004,mongo5:30005,mongo6:30006/?replicaSet=my-replica-set >> results_mongo/loadMongoA.txt
./bin/ycsb run mongodb -s -P workloads/workloada \
 -p recordcount=1000 \ 
 -p mongodb.upsert=true \ 
 -p mongodb.url=mongodb://mongo1:30001,mongo2:30002,mongo3:30003,mongo4:30004,mongo5:30005,mongo6:30006/?replicaSet=my-replica-set >> results_mongo/runMongoA.txt

./bin/ycsb load mongodb -s -P workloads/workloadb \
 -p recordcount=1000 \ 
 -p mongodb.upsert=true \ 
 -p mongodb.url=mongodb://mongo1:30001,mongo2:30002,mongo3:30003,mongo4:30004,mongo5:30005,mongo6:30006/?replicaSet=my-replica-set >> results_mongo/loadMongoB.txt
./bin/ycsb run mongodb -s -P workloads/workloadb \
 -p recordcount=1000 \ 
 -p mongodb.upsert=true \ 
 -p mongodb.url=mongodb://mongo1:30001,mongo2:30002,mongo3:30003,mongo4:30004,mongo5:30005,mongo6:30006/?replicaSet=my-replica-set >> results_mongo/runMongoB.txt

./bin/ycsb load mongodb -s -P workloads/workloadc \
 -p recordcount=1000 \ 
 -p mongodb.upsert=true \ 
 -p mongodb.url=mongodb://mongo1:30001,mongo2:30002,mongo3:30003,mongo4:30004,mongo5:30005,mongo6:30006/?replicaSet=my-replica-set >> results_mongo/loadMongoC.txt
./bin/ycsb run mongodb -s -P workloads/workloadc \
 -p recordcount=1000 \ 
 -p mongodb.upsert=true \ 
 -p mongodb.url=mongodb://mongo1:30001,mongo2:30002,mongo3:30003,mongo4:30004,mongo5:30005,mongo6:30006/?replicaSet=my-replica-set >> results_mongo/runMongoC.txt

./bin/ycsb load mongodb -s -P workloads/workloadd \
 -p recordcount=1000 \ 
 -p mongodb.upsert=true \ 
 -p mongodb.url=mongodb://mongo1:30001,mongo2:30002,mongo3:30003,mongo4:30004,mongo5:30005,mongo6:30006/?replicaSet=my-replica-set >> results_mongo/loadMongoD.txt
./bin/ycsb run mongodb -s -P workloads/workloadd \
 -p recordcount=1000 \ 
 -p mongodb.upsert=true \ 
 -p mongodb.url=mongodb://mongo1:30001,mongo2:30002,mongo3:30003,mongo4:30004,mongo5:30005,mongo6:30006/?replicaSet=my-replica-set >> results_mongo/runMongoD.txt

./bin/ycsb load mongodb -s -P workloads/workloade \
 -p recordcount=1000 \ 
 -p mongodb.upsert=true \ 
 -p mongodb.url=mongodb://mongo1:30001,mongo2:30002,mongo3:30003,mongo4:30004,mongo5:30005,mongo6:30006/?replicaSet=my-replica-set >> results_mongo/loadMongoE.txt
./bin/ycsb run mongodb -s -P workloads/workloade \
 -p recordcount=1000 \ 
 -p mongodb.upsert=true \ 
 -p mongodb.url=mongodb://mongo1:30001,mongo2:30002,mongo3:30003,mongo4:30004,mongo5:30005,mongo6:30006/?replicaSet=my-replica-set >> results_mongo/runMongoE.txt

./bin/ycsb load mongodb -s -P workloads/workloadf \
 -p recordcount=1000 \ 
 -p mongodb.upsert=true \ 
 -p mongodb.url=mongodb://mongo1:30001,mongo2:30002,mongo3:30003,mongo4:30004,mongo5:30005,mongo6:30006/?replicaSet=my-replica-set >> results_mongo/loadMongoF.txt
./bin/ycsb run mongodb -s -P workloads/workloadf \
 -p recordcount=1000 \ 
 -p mongodb.upsert=true \ 
 -p mongodb.url=mongodb://mongo1:30001,mongo2:30002,mongo3:30003,mongo4:30004,mongo5:30005,mongo6:30006/?replicaSet=my-replica-set >> results_mongo/runMongoF.txt
done
cd database
sleep 1
docker-compose -f docker-compose-mongodb.yml down
sleep 100

printf "Running benchmarks on Cassandra"
docker-compose -f docker-compose-cassandra.yml up & sleep 30
sudo chmod 775 -R cassandra*
docker exec -it database_cassandra_1 cqlsh -u cassandra -p cassandra -e "create keyspace ycsb WITH REPLICATION = {'class': 'SimpleStrategy', 'replication_factor':3};"
docker exec -it database_cassandra_1 cqlsh -u cassandra -p cassandra -e "USE ycsb;"
docker exec -it database_cassandra_1 cqlsh -u cassandra -p cassandra -e "create table ycsb.usertable (
    y_id varchar primary key,
    field0 varchar,
    field1 varchar,
    field2 varchar,
    field3 varchar,
    field4 varchar,
    field5 varchar,
    field6 varchar,
    field7 varchar,
    field8 varchar,
    field9 varchar);"

cd ..
mkdir results_cassandra

ip_cassandra=$(sudo docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' cass_cassandra_1)
ip_cassandra2=$(sudo docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' cass_cassandra2_1)
ip_cassandra3=$(sudo docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' cass_cassandra3_1)
ip_cassandra4=$(sudo docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' cass_cassandra4_1)
ip_cassandra5=$(sudo docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' cass_cassandra5_1)
ip_cassandra6=$(sudo docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' cass_cassandra6_1)

for i in {1..3}
do
./bin/ycsb load cassandra-cql -s -P workloads/workloada \
-p "hosts=$ip_cassandra,$ip_cassandra2,$ip_cassandra3,$ip_cassandra4,$ip_cassandra5,$ip_cassandra6" \
-p "cassandra.password=cassandra" \
-p "cassandra.username=cassandra" >> results_cassandra/loadCassA.txt

./bin/ycsb run cassandra-cql -s -P workloads/workloada \
-p "hosts=$ip_cassandra,$ip_cassandra2,$ip_cassandra3,$ip_cassandra4,$ip_cassandra5,$ip_cassandra6" \
-p "cassandra.password=cassandra" \
-p "cassandra.username=cassandra" >> results_cassandra/runCassA.txt

./bin/ycsb load cassandra-cql -s -P workloads/workloadb \
-p "hosts=$ip_cassandra,$ip_cassandra2,$ip_cassandra3,$ip_cassandra4,$ip_cassandra5,$ip_cassandra6" \
-p "cassandra.password=cassandra" \
-p "cassandra.username=cassandra" >> results_cassandra/loadCassB.txt

./bin/ycsb run cassandra-cql -s -P workloads/workloadb \
-p "hosts=$ip_cassandra,$ip_cassandra2,$ip_cassandra3,$ip_cassandra4,$ip_cassandra5,$ip_cassandra6" \
-p "cassandra.password=cassandra" \
-p "cassandra.username=cassandra" >> results_cassandra/runCassB.txt

./bin/ycsb load cassandra-cql -s -P workloads/workloadc \
-p "hosts=$ip_cassandra,$ip_cassandra2,$ip_cassandra3,$ip_cassandra4,$ip_cassandra5,$ip_cassandra6" \
-p "cassandra.password=cassandra" \
-p "cassandra.username=cassandra" >> results_cassandra/loadCassC.txt

./bin/ycsb run cassandra-cql -s -P workloads/workloadc \
-p "hosts=$ip_cassandra,$ip_cassandra2,$ip_cassandra3,$ip_cassandra4,$ip_cassandra5,$ip_cassandra6" \
-p "cassandra.password=cassandra" \
-p "cassandra.username=cassandra" >> results_cassandra/runCassC.txt

./bin/ycsb load cassandra-cql -s -P workloads/workloadd \
-p "hosts=$ip_cassandra,$ip_cassandra2,$ip_cassandra3,$ip_cassandra4,$ip_cassandra5,$ip_cassandra6" \
-p "cassandra.password=cassandra" \
-p "cassandra.username=cassandra" >> results_cassandra/loadCassD.txt

./bin/ycsb run cassandra-cql -s -P workloads/workloadd \
-p "hosts=$ip_cassandra,$ip_cassandra2,$ip_cassandra3,$ip_cassandra4,$ip_cassandra5,$ip_cassandra6" \
-p "cassandra.password=cassandra" \
-p "cassandra.username=cassandra" >> results_cassandra/runCassD.txt

./bin/ycsb load cassandra-cql -s -P workloads/workloade \
-p "hosts=$ip_cassandra,$ip_cassandra2,$ip_cassandra3,$ip_cassandra4,$ip_cassandra5,$ip_cassandra6" \
-p "cassandra.password=cassandra" \
-p "cassandra.username=cassandra" >> results_cassandra/loadCassE.txt

./bin/ycsb run cassandra-cql -s -P workloads/workloade \
-p "hosts=$ip_cassandra,$ip_cassandra2,$ip_cassandra3,$ip_cassandra4,$ip_cassandra5,$ip_cassandra6" \
-p "cassandra.password=cassandra" \
-p "cassandra.username=cassandra" >> results_cassandra/runCassE.txt

./bin/ycsb load cassandra-cql -s -P workloads/workloadf \
-p "hosts=$ip_cassandra,$ip_cassandra2,$ip_cassandra3,$ip_cassandra4,$ip_cassandra5,$ip_cassandra6" \
-p "cassandra.password=cassandra" \
-p "cassandra.username=cassandra" >> results_cassandra/loadCassF.txt

./bin/ycsb run cassandra-cql -s -P workloads/workloadf \
-p "hosts=$ip_cassandra,$ip_cassandra2,$ip_cassandra3,$ip_cassandra4,$ip_cassandra5,$ip_cassandra6" \
-p "cassandra.password=cassandra" \
-p "cassandra.username=cassandra" >> results_cassandra/runCassF.txt

done

cd database

sleep 100
docker-compose -f docker-compose-cassandra.yml down

