---
title: Simplicity and Adapatability in interface design
---
**Introduction**

How do you like your model and api? detailed, with separate classes or more uniform and lightweight with less classes, but with heavier objects, where some of the properties are optioal? Well, there is a delicate line in interface design between simplicity and adaptability, and it is up to you to decide also on what is a viable design - just enough design to satisfy your needs but keeping in mind you might need to extend it in future.  If that wasn't clear or something let's step up for an example and see what I'm talking about.  This is an open discussion, I like to hear thoughts and refine and tune my thinking, so I hope you have much to say about it.  We are using scala language for compactness of example but this does not mean it's useful only for scala it's just an example.

**Step 1 simple single data class**

We start by exploring a simple design, we have some process and we want to report on it's progress, therefore our domain model will communicate that we are having a process together with it's relevant properties.  We are following `Domain Driven Design` concept - the `bounded context`.  In this first step we are going to create a single case class which would hold our properties for the process update.

```scala
case class ProcessUpdate(id: String, name: String, message: String, status: String) // This an update on proess with an id, yes we used string to report the status.
```

**Step 2 extract interface**

This is very limited, what we we want to extend that process update, what if we have more kind of process updates? let's start extending it by adding an interfae, which is in anyway a good practice.

```scala
trait ProcessUpdate {
  def name: String
  def id: String
  def message: String
}

case class ProcessUpdate(id: String, name: String, message: String, status: String)
``` 

**Step 3 add support for errors**

Now what if our client want's to update us about an error how would he do that, currently our interface no our case class supports, that, we have a few choices to make here, let's go with the naive solution, let's add support for reporting the exception (we are not using `Failure` because we utilize scala for the sake of shortness not it's specific classes)

so we add naively the error to the interfae and to the case class:

```scala
sealed trait ProcessUpdate {
  def name: String
  def id: String
  def message: String
  def error: Option[Exception] // We are exploring where we should add the error should we add it to one single interface and case class?
}

case class ProcessUpdate(id: String, name: String, message: String, status: String, error: Option[Exception]) extends ProcessUpdate

def reportProcessStatus(processUpdate: ProcessUpdate)
```

So now the user can provide the `Exception` if he had one or `None` in case he does not have.

Is that good?

Well, imagine we have more such cases, of optional fields, we are going to pile them up on our poor interface morever the client who uses our case class, would need to think for many params what should he pass, and whether it's ok or not that he passes `None`.  This leads to a poor interface and mixed up users of our api.

Precaution: Note that although we try to stray away from this way of extending our domain, I will never tell you that this is 100% incorrect we should always consider each case on it's own.  

**Step 4 domain model on ADT**

In this case we say: we have a general ProcessUpdate interface and we could utilize it in multiple ways, one is success and one is error, and only in the error case we would need to pass the exception.  Now that comes with an additional case class we need to provide and additional mental stress on the client who needs to remember he needs to use one case class in one case and another in another case but we are reducing his mental stress by specifically specifying each such modeled class in our api, so he would know exactly what to pass.

```scala
sealed trait ProcessUpdate {
  def name: String
  def id: String
  def message: String
}

case class SuccessProcessUpdate(id: ExecutionIname: String, id: String, message: String) extends ProcessUpdate
case class FailureProcessUpdate(name: String, id: String, message: String, e: Exception) extends ProcessUpdate

def reportProcessSuccess(successUpdate: SuccessProcessUpdate) // success? pass success data.
def reportProcessFailed(failureProcessUpdate: FailureProcessUpdate) // it's now clear in fail we pass fail.
```

That't better. Now if we have a method to allow the user to report an error we would ask him to provide a `FailureProcessUpdate` and in this case we have no optional `exception`.

**The question**

The questionis ofcourse where do you put an end to this.  You might find yourself with an explosion of case classes for each case (here we just handled the error case).  The answer to that would be that you need to consider your options meaning, if you have an explosion, think about your design maybe those are different domain objects and traits alltogether and you should be combining them..

**The key**

Now I kept this to the end but this should be written at the beginning, I just didn't want to tell you the "secret" right from the start. The key to successfull design it to try the design yourself.  So it's almost a magic bullet, if you think which design should I use, like in our example, just write unit tests as first clients to both designs, and while you write your unit tests, you will see that one simply makes more sense! choose that design!! :)

**Summary**

If you want to get deeper on this topic and other design decisions there is an absolutely amazing book named [Scala Design Patterns](http://amzn.to/2tK3Ikh) this is one of the best books I have found on scala, mainly taking many concepts and specifically discussing how we should approach them.  In addition we are just touching upon this concept but I thought it's important to raise any design decision up, as trivial as it may be.  Sometimes we just takes things for granted, I strongly promote we should always consider the different option and choose the right one consciously.

![Scala Design Patterns](https://images-na.ssl-images-amazon.com/images/I/51yfYdrJjYL._AC_US436_FMwebp_QL65_.jpg)