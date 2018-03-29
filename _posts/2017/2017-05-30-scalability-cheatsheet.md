---
title: Scalability And Performance CheatSheet
categories: scalability
---
**CAP theorem**
* **Consistency**: property of distributed database when I read I always get the **last** value stored.
* **Availability**: when I ask I get an answer when I write it write when I read it reads.
* **Partition Tolerance**: **tolerance** - Some nodes cant talk to other nodes. **tolerance** means when the brain is sealedback together its able to see the picture.
* We can get only 2/3.
* when we are in middle of partition, if we want consistency we will not return an answer.  that is a `CP` system.
* `P` is not negotiable - it will happen, so we only need to choose from Consistency to Availability.
* We we are one box we can have all 3 CAP.
* When the world is a single master write database you did not need to deal with `CAP`.

* **Simplify** Simplify your code and design
* **X Axis Duplicate Data** Create multiple read only db's for your data and thus scale your reads.
* **Y Axis Split on business** Split your data like microservices, different roles, different db's.
* **Z Axis Split on same** If you have multiple customers split on customer id, you can put smaller customers on same shard and larger one on different.
* **3 Data centers rules** If you had only 2 you need 200% capacity if one goes down, if you have 3 data centers you need total of 150% so two of them would make 100% capacity.
* **Remember storage alternatives** file storage such as `ceph`, nosql, wide column storage such as cassandra.  Column storage usually provide automatic row sharding and asynchronous replication with eventual consistency, column split requires more of manual intervention.
* **Consistency** If you increase consistency for example on nosql then operations such as `getSomething` would require to contact all nodes to make sure they return the recent and greatest version.
* **Firewalls are like locks** You lock your main door but you don't lock internal doors.  Credit card request through lock but not image request.
* **Really need a transaction** Also when you pass money from one customer to another do you really need a transaction?
* **Dont read validate your write** you have enough what to do you do.
* **Learn aggressively from mistakes**


* **Boxing and unboxing** cost might be high especially when in a loop (can create many heap allocations).

* **Tail recursion** If you find yourself in a situation where you are doing a recursive call (where you should first find for already existing library function to do the operation for you instead of recursive call), then do whatever possible for the recursive call to be `tail recursive`.  A function is `tail recursive` if the recursive call is the last instruction performed which means only first call is in `stack`.  A hint for many tail recursive call is that you pass some accumulator inside the recursive call, which means you are doing the calculation in the next step in the recursion as opposed to holding the accumulator outside the tail recursive call.

```scala
def tailrecSum(l: List[Int]): Int = {
  def loop(list: List[Int], acc: Int): Int = list match {
    case Nil => acc
    case x :: xs => loop(xs, acc + x) // you see we pass the accumulator to the next recursive call. no calc after loop.
  }
  loop(l, 0) 
}
```

* **Views** offers a way for a computation to be deferred downstream the computation, add `view` to an eagerly evaluation collection that allows it.  Ex. `val listView: SeqView[Int, List[Int]] = List(1, 2, 3).view`

* **Event Sourcing** describes an architectural approach to designing systems that relies on processing events over time instead of relying on a model of the current state.

* **blocking {}** (scala) construct is used to notify the ExecutionContext that a computation is blocking. This allows the ExecutionContext to adapt its execution strategy. For example, the default global ExecutionContext will temporarily increase the number of threads in the pool when it performs a computation wrapped with blocking. A dedicated thread is created in the pool to execute the blocking computation, making sure that the rest of the pool remains available for CPU-bound computations.

* **CRDT** stands for Conflict-free Replicated Data Types.  A CRDT is a data structure that is specifically designed to ensure eventual consistency across multiple components without the need for synchronization.  CRDTs are defined to make conflicts mathematically impossible.  To be defined as a CRDT, a data structure has to support only commutative updates. That is, regardless of the ordering in which the update operations are applied, the end state must always be the same.  When a system uses CRDTs, all the nodes can send each other update messages without a need for strict synchronization. The messages can be received in any order, and all the local states will converge to the same value eventually.

* **Eventual consistency** is a well-known concept in distributed system, which is not exclusive to CRDTs. This model guarantees that eventually, if a piece of data is no longer modified, all nodes in a cluster will end up with the same value for this piece of data. Nodes send each other update notifications to keep their state synchronized. The difference with strong consistency is that at a given time, some nodes may see a slightly outdated state until they receive the update notice.  All the nodes of the cluster hold the same piece of data (A = 0). Node 1 receives an update to set the value of A to 1. After updating its internal state, it broadcasts the update to the rest of the cluster. The messages reach their targets at different instants, which means that until we reach step 4, A has a different value depending on the node. If a client queries node 4 for the value of A at step 3, they receive an older value as the change has not yet been reflected in node 4.  This is the secret of eventual consistency without merge conflict.

**Paxos** [Animated paxos](http://harry.me/blog/2014/12/27/neat-algorithms-paxos/)

**Journaling**

* **Avoid data corruption**, you could update something and fail, in journaling append only.
    * Reading is now difficult you need to read all your journaling, so from time to time you create a snapshot of state.
    * Readers an now just read without disturbing writes, its immutable
* What happens if two distributed machines try at the very same time same timestamp to write different data on same key?
* **eventually consistent** each participant has its own local strongly consistent store, they update each other about.. updates.  With eventual consistency you build a tree with all nodes and update others when something happens and can change route no one node has precedence over others who has same data. - it is impossible for anyone to know the current **real state**, impossible to do **read-modify-write** and in addition its vulnerable **network failures**.

**Paxos strong consistency**
* **Paxos Read** client asks all nodes, valid answer is from majority agrees on value.  No canonical place to store answer.  This is naive paxos there are better.
* **Paxos Write** client contacts a random node, asks it to write value, the node take the value and a sequence number and does **prepare: (value, seq)**, all receiving nodes make sure seqnum is highest to accept a proposal, if the client would send proposal immediately if two clients do that each could end up with half the system agreeing, paxos has a way to generate only growing numbers with time, then if its the highest nodes agree to accept - promise to accept. now counting how many promises we have, if we have promises from more than half majority before itmeout then asking all promises to accept. if only some nodes managed to accept value, whieh means that reads would not get majoriry and would fail it sucks but at least we are not at inconsistent state, 
Reach a consensus among members.
    * **quorum** for example you need at least half the nodes to agree on it. The part time parliament in order to make a change you have to get the agreement of the majority of the paxons, now you cannot have two set of paxons both larger than half making hte same change enough otherwise they would say hey we are making already this change.  Likewise when you need to read something you want to know the law you need to get majority of the paxons to agree on latest version.  The cost a write is requiring consensus among majority of members you can no longer just write to your local journal.
    * **master election** - an expensive, strongly consistent store used to decide who is in charge then if you need something you contact him.

**combined approach** 

**and then came the blockchain**

[resource on paxon](https://hackernoon.com/how-your-data-is-stored-or-the-laws-of-the-imaginary-greeks-54c569c17a49)

**References**

* Scala High Performance Programming Book by Michael Diamant and Vincent Theron

Originally published at: []https://devatrest.blogspot.com/2017/05/performance-and-scalability-cheatsheet.html](https://devatrest.blogspot.com/2017/05/performance-and-scalability-cheatsheet.html)