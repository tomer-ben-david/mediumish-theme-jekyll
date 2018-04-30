 Int

# BFS

```java
public int findLeftMostNode(TreeNode root) {
    Queue<TreeNode> queue = new LinkedList<>();
    queue.add(root);
    while (!queue.isEmpty()) {
        root = queue.poll();
        if (root.right != null)
            queue.add(root.right);
        if (root.left != null)
            queue.add(root.left);
    }
    return root.val;
}
```

## queue

### insert root

#### repeat

##### pop node

##### insert children

# BTree

In computer science, a B-tree is a self-balancing tree data structure that keeps data sorted and allows searches, sequential access, insertions, and deletions in logarithmic time. The B-tree is a generalization of a binary search tree in that a node can have more than two children. ![btree](http://www.virtualmachinery.com/images/tree.gif)

# infix

## postfix/prefix

### convert to postfix/prefix

postfix and prefix do not need parenthasis
A + B * C => B C * +
to convert: operands stay in same relative places, only operators change positions.

#### no need parenthasis

### evaluate

push operands as long as we have operands once we have operator pop 2 operands and run operation on them.

# resources

## Problem solving with algorithms and data structures

online concise python book

# java

## concurrent

### delayed operation

```java
Scheduler scheduler = Executors.newSingleThreadScheduledExecutor()
scheduler.schedule(new Runnable() {
      override def run(): Unit = {
        Some Code
      }
    }, 1, TimeUnit.SECONDS)
```

## URLConnection

```java
URL url = new URL("http://example.com");
HttpURLConnection connection = (HttpURLConnection)url.openConnection();
connection.setRequestMethod("GET");
connection.connect();

int code = connection.getResponseCode();
```

## gc

```markdown
![gcgenerations](https://tinyurl.com/gcyoungold)
```

### young

Moving them back and forth between s0 and s1.  Also known as from and to space.

#### eden

```markdown
1. Most objects die here.
1. When eden is full we have minor GC which copies to s0 or s1 in addition in minor gc objects are moved from s1 to s0 and back.
1. Move objects to survivor (s0).
```

##### TLAB's

```markdown
each thread has it's own space to allocate data so eden is split and each thread has it's own space.
![eden tlabs](http://i.umumble.com/img/topic-1-1506586679.png)
```

#### survivor

ALL objects from s0 are movbed to s1 on minor gc, all objects from s1 are moved to s0 on minor gc.  At any point in time only s0 or s1 has objects.  The other one is empty.

##### from survivor

##### to survivor

### old

moving to here from survivor after a couple of minor gc are moved here to old.  Here we have the full GC. We try to have objects not arrive to old so that they won't have full gc.

### Permanent

VM Meta classes.

### resources

https://www.safaribooksonline.com/library/view/advanced-java-performance/9780134653273/ajph_01_01.html?autoStart=True

### tools

#### visualvm

##### visualgc plugin

## performance troubleshooting

### measure

#### cpu

##### user cpu

you want: linear relation: increase load on system and increased user cpu.

##### system cpu

also known as kernel cpu.

###### reduce

time spent on system cpu is time we don't have on user cpu

##### idle time

#### virtual memory

if your heap memory is in virtual memory gc would be very slow and gc pauses will take long time

#### process

##### context switching

high voluntary context swiching can be an indication of waiting for locks, io, contention on locks and io.

###### voluntary

###### involuntary

more threads than can run.

##### scheduling queue

goes together with involuntary context switching we have more threads than can be handled.

### resources

https://www.safaribooksonline.com/library/view/java-performance-livelessons

# softskills

## meetings

### end

you already konw how you want the meeting to end, before meeting and during meeting you should stick as fast as possible to how the meeting should and and put your voice.

# math

## mod

only the reminder so 2 % 3 is 1 and 4 % 3 is 1

# WORK

## amazon

### machine learning

#### models lifecycle

release process from data scientists to production

#### measure effectiveness

effectiveness of models are they good?

## TR
