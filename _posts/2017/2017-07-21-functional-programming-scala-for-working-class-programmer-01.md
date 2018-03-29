---
title: Functional Programming in Scala for Working class programmer 01
permalink: /scala-by-fp-terminology-introduction/
---
# Scala FP By Terminology Root Cause Analysis

Have you ever been to a scala conf and told yourself "I have no idea what this guy talks about?" did you look nervously around and see all people smiling saying "yeah that's obvious " only to get you even more nervous? . If so this post is for you, otherwise just skip it, you already know fp in scala ;)

This post is optimistic, although I'm going to say functional programming in scala is not easy, our target is to understand it, so bare with me.  Let's face the truth functional programmin in scala is difficult if is difficult if you are just another working class programmer coming mainly from java background. If you came from haskell background then hell it's easy.  If you come from heavy math background then hell yes it's easy.  But if you are a standard working class java backend engineer with previous OOP design background then hell yeah it's difficult.

**Video/Podcast Version Of This Post**

<iframe width="560" height="315" src="https://www.youtube.com/embed/a16FCa65xt4" frameborder="0" allowfullscreen></iframe>

**Scala and Design Patterns**

An interesting point of view on scala, is looking at it's set of features as design patterns.  This is exactly what Ivan Nikolov says in [Scala Design Patterns](http://devatrest.blogspot.com/2017/07/scala-design-patterns-book-review.html) . <a href="http://amzn.to/2tK3Ikh" target="_blank"></a> He actually shows how the hybrid nature of the scala programming language also makes some of the traditional object-oriented design patterns obsolete, or possible, using other cleaner techniques in his great book.  While I fully agree with him, I recognize that it's going to take lot of time going over all the standard design patterns and not only the standard ones but also many of th enon written patterns, best practices, and seeing how the match in the scala programming language.

<a href="http://devatrest.blogspot.com/2017/07/scala-design-patterns-book-review.html">
<img src="https://goo.gl/RR3eDs" alt="Scala Design Patterns" width="200"/></a>

**Terminology**

Let's start with the terminology, monad, semigroup, functor, typeclass, higher order functions, higher order types, partially applied functions, partial functions, are you still with us? If you already know the above concepts then this post is not for you but if you don't then heck yeah, but I have no chance of going through them in a single post, so stay tuned for the next post.

**Example, is it simple**

Question, is the below code easy?

```scala
  object Request {
    def pure[A](a: A): Free[Requestable, A] =
      Free.liftFC(Pure(a) : Request[A])

    def fetch[A](service: Service[A]): Free[Requestable, A] =
      Free.liftFC(Fetch(service) : Request[A])
  }
```

Not for me, what are all those "Free", "lift", "pure", what are the generics doing there? I can find thousands of examples like this, just search google for the cool FP terminology, this is our target to decompose this structure, to clear out the fog. 

**Haskell**

I think if you want to learn scala you first need to learn haskell or something else and only then get to scala. It looks like its very difficult to first get to these concepts by scala. And yes when I need to learn a concept in scala and I find that it's problematic to grasp guess what I when all fails - I first check out how to work it out in haskell and how to get the concept in it, and only then get to scala. if haskell would only have all java libraries and run on jvm... During this series when there are concepts that I think haskell code is important to show to get better understanding of the term, we'll just do that.

**FP is very important**

But FP is very important, concurrency, better code, big data, parallel computing, better testing.  I mean FP is the thing for a programmer who want's to write clean code with a clean pure core and all the IO surrounding it, it's the dream of clean code, so we are going to make that effort.

 **The good thing about FB**
 
 The good thing about FP is what makes all the problem and noise.  With FP you use pure functions, this I assume we all know what it means.  The problem is that real world applications are not pure, they have side effects.  And this is where much of the complexity comes into play, this is the challenge, in addition you don't mutate things, so you start using recursion :)
 
**The benefits of imperative programmers**

Before i'm getting assassinated by functional programmers I want to tell you this, there are good things about imperative programming.  If you have some basic sanity of clean code practices and you write well organized and clean code with imperative programming, (small functions, mutation where needed but not always), you use for loops instead of map/flatMap twin brothers.  Then you know what? you use the java util concurrency building blocks and non blocking io also with multithreading, you can write excellent applications which have high performance utilization, I know this from first hand, I wrote many such apps some with very high scale demand, and i have to say that for other programmers without majour knowledge in FP those imperative programs were much easier to understand than their FP mirror brothers and sisters programs.  So imperative is also good.  But we are here to get to FP not to imperative.  And this is the route we are going to take.

**Declarative vs Imperative**

So the first step is to understand what declarative code means.

I like jenkov article "The illusion of declarative code".  He presents the below imperative code:

```javascript
function capitalWithInterest(capital, interest, periods) {
    var result = capital;
    for(var i = 0; i < periods; i++) {
        result = result * (1 + interest);
    }
    return result;
}
```
Now he asks what is the declarative version of that code? and he answers:

```javascript
var result = capitalWithInterest(100, 0.1, 5);
``` 

Here - it's declarative we didn't say imperatively how we want to calculate capital with interest we have just **told** the computer that we want it to calculate for us the capital with interest.

**Declarative code with scala**

So in scala the most common example of declarative code is by using "map" and friends instead of for loops, for loops are the explicit imperative way to tell the computer how to do the loop and map and friends are declarative you just tell the computer go over the items on this list and subtract 2 from each

```scala
val listOfNumbers = List(1,2,3)
listOfNumbers.map(_ - 2).foreach(println) 
```

So in this case instead of imperatively going through the list and printing each we tell odersky, hey please for each item in the list (map) please subtract two and for each item print it (after you subtracted 2 from it)  
 
 **Functional Programming and Immutability**
 
 Because in functional programming we would rather have pure functions, then, there is a consequence to that the consequence, is that we use immutability more nad more, as much as we can in favour of mutable data structures.  In the great book [Scala Design Patterns by John Hunt](http://amzn.to/2tK3Ikh), the author says, quote: "Immutability is an important principle in Scala and it should be preferred. The builder design pattern with case classes uses immutable fields and this is considered a good practice.".  And yes case classes which inherit from sealed traits are not only a great way to model your data, they help extensively with using immutable data structures instead of mutable.
 
 **Summary**
 
 We have just touched the tip of the iceberg here, but don't worry before global warming takes it's place and metls the iceberg we are going to hit upon all the concepts you wanted to know about scala but had nightmares about free monad, managing state, functors and friends.
 
![Scala Design Patterns](https://images-na.ssl-images-amazon.com/images/I/51yfYdrJjYL._AC_US436_FMwebp_QL65_.jpg)