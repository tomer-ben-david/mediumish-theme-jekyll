---

title:  "Hadoop CheaSheet"
date:   2017-04-22 22:18:00
categories: scalability
comments: true
---
## Introduction

We have decided to aggregate in a single post the most important things to know about hadoop in a concise way.  Let's us know if you have any comments!

<iframe src="https://drive.google.com/file/d/0B3YbDgIxeEikMFF4MW83WWI4XzQ/preview" width="640" height="480" frameBorder="0"></iframe>

## Hadoop

|               |                                          |
| ------------- | ---------------------------------------- |
| Sequence File | Java writable binary format not language independant |
| Avro          | Language independent                     |
|               |                                          |



```bash
##########
## HDFS ##
##########

NameNode # => Managing filesystem namespace, if you loose it you have no pointers to your data, you practially lost your data.

DataNode # => You know it holds data, installed on each worker.

Block # => Each file split to B1,B2,.. where each block size 128MB replication is on blocks.  Name node knows that File X is split to B1,B2 and where.

##########
## YARN ##
##########

ResourceManager # => Like `NameNode` for computing, tracks NodeManagers and how available they are for work.

NodeManager # => Like `Datanode` for computing, offer computational resources run applications tasks in containers.

ApplicationMaster # => Each application has `ApplicationMaster` process which negotiates resources with `ResourceManager` which delivers a `container` descriptor back to `ApplicationMaster` processa and asks `NodeManager` to launch the `container.`
 
 ################
 ## Map Reduce ##
 ################
 
 Map(k1, v1) --> list(k2, v2) # => extract something you care about from each record. # map takes keyvalue pair and produces zero or more intermediate keyvalue pairs # then outside of map shuffle  (distribute to reduce) and sort.
 
 shuffle # => combined everything by same keys 
 
 Recduce(k2, list(v2)) --> list(k3, v3) # => aggregate, summarize, filter, or transform.  # Reduce take a single key and list of values and produces zero or more keyvalue, usually aggregation.
 
 input --> map --> shuffle --> reduce --> output
```

## Spark Zeppelin with EMR (Amazon)

```bash
git clone https://resources.oreilly.com/examples/0636920077367 sparkemr-example
cd sparkemr-example
mkdir -p src/main/scala
tomers-mbp:sparkemr-example tomer.bendavid$ cp Analyzing\ Big\ Data\ with\ Spark\ and\ Amazon\ EMR\ -\ Working\ Files/Chapter\ 3/ALSMovieRecs1M.scala src/main/scala/
tomers-mbp:sparkemr-example tomer.bendavid$ cp Analyzing\ Big\ Data\ with\ Spark\ and\ Amazon\ EMR\ -\ Working\ Files/Chapter\ 3/ALSMovieRecs1M.sbt .
sbt package

https://us-east-2.console.aws.amazon.com/console/home?region=us-east-2# # => we wnat to create s3 bucket
// search for s3
// create a bucket i named it "tomer-global-bucket"
// mkdir in ui ml-1m
aws s3 cp movies.csv s3://tomer-global-bucket/ml-1m/

```

## Start hadoop spark hive locally


```bash
git clone https://github.com/big-data-europe/docker-hadoop-spark-workbench
cd docker-hadoop-spark-workbench/
docker-compose up

# Download hadoop binary
# extract it
update zeppelin-env.sh and set HADOOP_HOME and HADOOP_CONF_DIR

udpate your credentials

$ aws s3 cp target/scala-2.11/alsmovierecs1m_2.11-1.0.jar s3://tomer-global-bucket/
upload: target/scala-2.11/alsmovierecs1m_2.11-1.0.jar to s3://tomer-global-bucket/alsmovierecs1m_2.11-1.0.jar
$ aws s3 ls s3://tomer-global-bucket/
2017-12-17 17:52:10      19702 alsmovierecs1m_2.11-1.0.jar
```

Start zeppelin, from zepplin home, you can view the hdfs in zeppelin with:

```bash
%file

ls /
```

zeppelin collides with spark master on port 8080 we change it to 8180

vi conf/zeppelin-env.sh
export ZEPPELIN_PORT=8180 # http://localhost:8180

in zeppelin ui search for interpreter spark and update 

master from local[*] to spark://localhost:8080


https://hortonworks.com/tutorial/hands-on-tour-of-apache-spark-in-5-minutes/


## Summary

We kept that post small so you could rest :), but in general we went through what NameNode, DataNode, Block, ResourceManager, NodeManager, ApplicationMaster, Task are in a very short and concise way, isn't that just great :) If you liked it please hit the share button below and leave a comment for any comment! :)


notes:


//import  org.apache.hadoop.fs.{FileSystem,Path}

//FileSystem.get( sc.hadoopConfiguration ).listStatus( new Path("hdfs:///")).foreach( x => println(x.getPath ))

// import sys.process._

// "wget http://archive.ics.uci.edu/ml/machine-learning-databases/00222/bank.zip" !
// "mkdir data" !
// "unzip bank.zip -d data" !
// "rm bank.zip" !