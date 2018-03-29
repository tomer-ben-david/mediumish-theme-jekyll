---
title:  "Couchbase Primer"
date:   2018-03-05 05:18:00
categories: db
permalink: couchbase-primer
comments: true
---

## Java client

```scala
def test() {
  cluster = CouchbaseCluster.create(DefaultCouchbaseEnvironment.builder.bootstrapCarrierDirectPort(carrierPort).bootstrapHttpDirectPort(httpPort).build, "couchbase://127.0.0.1")
  bucket = cluster.openBucket("default")

  bucket.insert(JsonDocument.create("key", com.couchbase.client.java.document.json.JsonObject.create().put("key", "value")))
  println(bucket.get("key"))
  bucket
}
```

## N1QL

```sql
CREATE PRIMARY INDEX ON  `mybucket`; /* => You have to define a primary index to use n1ql */

SELECT * FROM mybucket;
```