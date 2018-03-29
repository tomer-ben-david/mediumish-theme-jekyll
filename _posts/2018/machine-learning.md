 Machine Learning

# data

## spreadsheet

Think of data as a spreadsheet as a table.

## Matrix

rows: observations, our datadata. columns - features.  Get used to it.

### sparse matrix

matrix who's most rows are zeros

# learning

## types

### statistical

Output = f(input) # => f(inputVariable) or f(inputVector), or f(independent variables) or Y = F(X) // X1,X2,..

### programming

OutputAttributes = Program(InputAttributes) or Program(InputFeatures) or Model = Algorithm(Data)

### parametric

No matter how much data you throw on it, it will still need these parameters like a line `Y = ax + b` (logistic regression, linear discriminant analysis, perceptron)

### non parametric

No matter how much data you throw on it, it will still need these parameters like a line Y = ax + b (logistic regression, linear discriminant analysis, perceptron)

### supervised

You have a teacher he knows the answer, classification, regression

### unsupervised

No teacher, clustering, association

### Semi supervised

Some can be with a teacher

### Classification vs Regression

classification(input) => spam/notspam (categorical)<br />regression(input) => bitcoin price (continous outcome)

## Errors

### error Y=f(x) + e

Y = f(X) + e # => You learn a function!

### Bias Variance

Bias Error (model assumptions), Variance Error, Irreducable Error. Increasing bias error reduce variance, increase variance will decrease bias

### Overfitting

Resampling to estimate model accuracy, Hold back validation dataset, Cross validation.

# map reduce

```bash
grep something | wc -l # => grep is map wc -l is the reduce!
```Based on simple [key, value] pair
Moving computation is cheaper than moving data, our data is big ain't it?

## map

List(input) => List(output)

## reduce

List(input) => Output(value)

# spark

## libraries

### graphx

has a library for computing graph computations (in addition to mlib).

## operations

### transformations

### actions

## data structures

### RDD

#### blind data

### DF

dfs.replication: 1, dfs.namenode.name.dir: /var/data/hadoop/...

#### scheme

Think of it as distributed database table.

## fast

1. Memory
1. Result of mappers goes to shared memory accross the cluster and not to disk
1. In reality hadoop mapreduced optimized with Tez which means it keeps values in mem like spark
1. In reality If spark runs out of memory intermediate results goes to disk.

# Algorithms

## Gradiant Descent

almost every machine learning algorithm uses optimisation at it's core, optimising the target function.  Local minimum.  start with 0 `coefficient = 0.0`.  `cost = evaluate(f(coefficient))`.  Update coefficient downhill with derivative.  `coefficient = coefficient - (alpha * delta)`.  alpha learning parameter.

### Stochastic Gradiant Descent

Have large amounts of data, update to coefficients is foe each training instance, not in batch, as we have random data we move quickly.

#### sdkhjskdfhsjdf skfksflskflksfj sdlkjfsklfjksljf sdkjfhskjfhjskhfd sdkjfhdskjfhjk

# hadoop

## install

### from source

https://www.safaribooksonline.com/library/view/hadoop-and-spark/9780134770871/HASF_01_02_02_01.html
extract hadoop tar.gz, make sure JAVA_HOME in path, HADOOP_HOME configured, add yarn, hdfs, mapred users, make directories: /var/data/hadoop/hadfs/[nn,snn], log directory,

### core-site.xml

fs.default.name: hdfs://localhsot:9000 #=> set the hdfs port.

### hdfs-site.xml

hdfs parameters, dfs.replication: 1, dfs. directory...

### format hdfs

```bash
su - hdfs
cd /opt/hadoop-2.8.1/bin
./hdfs namenode -format
```

### start

```bash
cd /opt/hadoop-2.8.1/sbin
./hadoop-daemon.sh start namenode
./hadoop-daemon.sh start secondarynamenode
./hadoop-daemon.sh start datanode
jps # => java processes status the above are all java processes.
```

### create hdfs folders

hdfs dfs -mkdir -p /mr-history/tmp /mr-history/done chown to yarn:hadoop

### start yarn

```bash
su - yarn
./yarn-daemon.sh start resourcemanager
./yarn-daemon.sh start nodemanager
./mr-jobhistory-daemon.sh start historyserver
jps
```

## urls

### hdfs fs

#### http://localhost:50070

hdfs file system

### yarn

#### http://localhost:8088

## run test

### yarn jar somejob.jar args

run a test mr jar with yarn
