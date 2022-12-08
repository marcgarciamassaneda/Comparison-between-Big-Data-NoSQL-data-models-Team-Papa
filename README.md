# Comparison-between-Big-Data-NoSQL-data-models-Team-Papa

In order to run the script You'll need to run an AWS EC2 instance running on Ubuntu Server 22.04 LTS (HVM), SSD Volume Type. 
The type of instance needs to be t2.xlarge and the storage 20GiB.
Once the instance is running, move all the docker-compose files as well as the script.sh file in the instance then execute the commands:

```
chmod +x ./script.sh
./script.sh
```

Then the script should install all the dependencies and run the benchmarks. The results of the benchmarks should be accesible in the folders results_redis, results_mongo and results_cassandra.
