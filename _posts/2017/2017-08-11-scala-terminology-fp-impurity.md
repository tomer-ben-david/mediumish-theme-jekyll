---
title: Scala, Learning FP By Terminology - FP Impurity
permalink: /scala-learning-fp-by-terminology-fp-impurity/
---

**FP Impurity**

As a final word I would like to talk about FP and impurity.

I know that sounds like an oxymoron but FP has impurity why? because it's a cruel world, you have to do IO.  FP has no solution for that.  FP will tell you do your pure core as big as you can and wrap that impure stuff with IO, it won't turn it to pure sutff it just wraps it in IO.  FP tells you well if you cannot make this function pure at least tell us in it's signature it's impure.  We like function signatures in FP.

Martin Odersky says [Questioning FP](https://webcache.googleusercontent.com/search?q=cache:Azjq01tGknsJ:https://groups.google.com/d/topic/scala-debate/xYlUlQAnkmE+&cd=2&hl=en&ct=clnk&gl=il)

>The IO monad does not make a function pure. It just makes it obvious
 that it's impure.
 
 So there is no silver bullet, if you start usimg IOMonad it just going to make your explicitly say that they are impure.
