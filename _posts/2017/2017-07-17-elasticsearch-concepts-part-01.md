---
title: Is ElasticSearch Set/Get Eventual Consistent?
---
**Introduction**

ElasticSearch does much of the heavy lifting on handling horizontal scalability for us, managing failures, nodes, shards.  Now I was just getting into it a few days ago in a new project I was working at.  I wanted to know if the SET/GET operation is eventually consistent or not.  I started by thinking, well it's a nosql, there are replicas, it should be eventually consistent but then I read some documentation which leads me to think it might be consistent and not eventual consitent, now if you know otherwise by the below findings, don't hestiate please let me know :) . But first, allow me to summarize for you some of the concepts I have learned and then I will say what I think about SET/GET eventual consistency.  (I also did a local cluster test to confirm that.)

**cluster.name**

Nodes with the same name belong to same cluster

The cluster reorganizes itself as we add or remove data, meaning it manages moving data between nodes if needed.

**Master Node**

He is not involved in searching - one node is elected as master node, it's going to be in charge of adding and deleting indexes, adding/removing nodes from cluster.  He is just a manager.

**Any Node**

You can talk to any node for searching and indexing including the master.  The **entry point node** (any node) knows where data resides so it will communicate with it to get and set data and it will get back to us (the entry point node) with the results.

**Index**

Logical namespace that points to one or more shards.  It's like a database in a relational ddatabase.  Index groups together mone or more shards.

```bash
1 index -> multi shards # => one index can have one or more multi shards it's like a database.
shard # => documents are stored in shards. single instance of lucene.  a complete search engine in it's own right.
application -> index -> shard # => applications talk to shards via indexes which are logical namespaces pointers to shards.
cluster grows # => move shards between nodes.
primary shard # => document is on a **single** primary shard.  data is only on one primary shard.
replica shard # => in case of hardware failure on primary shard, serve read requests (read/get).
number of shards # => you can have multiple primary shards for an index.
who handles what # => Read / Search is handled by either primary or replica, the more copies the higher the throughput.
concurrency # => if conflict two proesses read 50 and increase to one and store we can end up with 51 and not 52. elasticsearch is using optimistic concurrency control (versioning).
```

**Distributed Document Store**

When you index a document it is stored on a **single primary shard**.

```shard = hash(routing) % number_of_primary_shards```

```
This explains why the number of primary shards can be set only when an index is created and never changed: if the number of primary shards ever changed in the future, all previous routing values would be invalid and documents would never be found.
```

```
coordinating node # => the node got our request, forwards to correct node for read/write.
```

Create, index, and delete requests are write operations, which must be successfully completed on the **primary shard before ** they can be copied to any associated replica shards.  The client will get OK only if finished successfully on primary shard.

**parameters/configuration**

```
replication # => sync: wait for successull response from replicas.  async: success as soon as primary finished.  avoid sync...
quorum # => By default primary shards requires a quorum (shards majority) to be **available** before attermting write.
read miss # => it is possible that while a document is indexed document is in primary but not yet copied to replica, replica will return that document does not exist, while the primary would return the document successfully.  in that sense read is not consistent but eventual consistent.
```

**Now - Is ElasticSearch SET/GET Read Eventual consistent?**

Elasticsearch read consistency is eventually consistent but it can also be consistent :).  The realtime flag is per shard, so if we have a replicated shard which did not get the data yet, while it may still be realtime we won't get the most recent data, at most we would get the data on it's transaction log.

realtime:true + reaplication: sync ==> read consistent # => because replication true means master waits for the written data to be replicated to all replicas.

How did I get to that conclusion? see the documentation:

 [Distributed Writing section in the documentation](https://www.elastic.co/guide/en/elasticsearch/guide/1.x/distrib-write.html) says this:
 
 > replication
The default value for replication is sync. This causes the primary shard to wait for successful responses from available replica shards before returning.

in addition it says:

> By the time the client receives a successful response, the document change has been executed on the primary shard and on all replica shards. Your change is safe

Now the documentation also says this:

[documentation on read process on elasticsearch](https://www.elastic.co/guide/en/elasticsearch/guide/1.x/distrib-read.html)
> It is possible that, while a document is being indexed, the document will already be present on the primary shard but not yet copied to the replica shards. In this case, a replica might report that the document doesn’t exist, while the primary would have returned the document successfully. Once the indexing request has returned success to the user, the document will be available on the primary and all replica shards.

So it's possible for the document to be only on master and not replicas, well that makes sense, if we managed to set the document only on master and the replica didn't get it yet, but in this case the above section also said that the client would not get an ok response.

now there is also the `realtime` flag in the story:

[elasticsearch realtime CRUD](https://www.elastic.co/guide/en/elasticsearch/guide/current/translog.html)

> The translog is also used to provide real-time CRUD. When you try to retrieve, update, or delete a document by ID, it first checks the translog for any recent changes before trying to retrieve the document from the relevant segment. This means that it always has access to the latest known version of the document, in real-time.

To the client which is waiting until data is replicated it is consistent, as the `sync` flag of the consistency is returning a success result to the client only after it was replicated.  Together with the `realtime` flag this ensures that even if the operation is only in the transaction log, it would be returned to the client.  but if i'm client2 which did not do the write, i might be just inside the operation where it finished on master and was not replicated yet to the replicas, in this case it would be eventual consistent.  Ofcourse I encourage you to tell me if you think this is not the case :)

**Book**

![ElasticSearch Essentials](https://images-na.ssl-images-amazon.com/images/I/516PU%2BXcIZL._SX404_BO1,204,203,200_.jpg)
