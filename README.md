# Comparison-between-Big-Data-NoSQL-data-models-Team-Papa

In order to run the script You'll need to run an AWS EC2 instance running on Ubuntu Server 22.04 LTS (HVM), SSD Volume Type. 
The type of instance needs to be t2.xlarge and the storage 20GiB.
Once the instance is running, execute the following commands to clone the repo and run the script:

```
git clone https://github.com/marcgarciamassaneda/Comparison-between-Big-Data-NoSQL-data-models-Team-Papa.git
chmod +x ./script.sh
./script.sh
```

Then the script should install all the dependencies and run the benchmarks. The results of the benchmarks should be accessible in the folders results_redis, results_mongo and results_cassandra.
