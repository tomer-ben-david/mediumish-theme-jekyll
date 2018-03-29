---
title: Scala, Learning FP By Terminology - confused oriented flatMap
permalink: /scala-by-fp-terminology-flatmap/
---

# flatMap

**Confused oriented programming and flatMap**

`flatMap` is one of the most major core concepts and terms in scala and in FP terminology in general.  In addition, flatMap appears to have an amazing tendency to mix developers up.  The reason is obvious, the term flatMap is confusing, when you look at the signature of the function it's not really clear what it's doing and the different from `map`.  In addition the example's provided are mostly complex and confusing by themselves.  In this chapter we are going to discuss flatMap and try to dig in and get to know it from all directions.

`flatMap` reminds me in many ways of a magician pulling out a rabbit out of his hat.  In FP you concatenate or sequence function evaluation one after another.  When you do this you can end up with `Hat[Hat[Hat[Rabbit]]]` or `[Box[Box[Box[Cat]]]]` obviously nor we want that nor the cat or the rabbit.  Therefor just as if the magician pulls out the rabbit out of the hat and does not pulls out a Hat[Rabbit] out of his hat, the magician uses the flatMap trick for that, or he pulls out the flatMap rabbit.

**What I don't like about flatMap explanations**

If there is one thing I dislike about googling results of flatMap explanation is that almost all of them go directly to an explanation like this: "flatMap is like a map with list".  I really don't like this explanation.  I don't like it because it doesn't talk about the essence of flatMap, the concept.  I think the conceptual idea behind flatMap is much larger than this one, and there is also a problem with flatMap signature, not that it should not have it's current signature, i just think there is much more room for a more concise explanation of this term.

If you actually go ahead and checkout the "Programming In Scala" great book you would see it says:

> You see that where map returns a list of lists, flatMap returns a single list in which all element lists are concatenated.

I think this can also misguide you because I think the essence of flatMap is different.

**flatMap-Confused developer's unite!**

First let me tell you this, if you don't find `flatMap` confusing please stop reading this article you already know or think you know `flatMap`.  I'm writing for the confused developer not for the non-confused one.  Frankly, I can tell you that I can take off 2 years off my life now and fill them up with thinking about flatMap together with a beer.  And if that won't be enough i'll extend it with a few years.

So for the `flatMap-Confused` developers, I would like start by checking if we should be embarrassed that we are confused about flatMap or not.

The great and short :) blog post: **[Scala's flatMap is not Haskell's >>=](http://igstan.ro/posts/2012-08-23-scala-s-flatmap-is-not-haskell-s.html)** Tell us a great story, scala's flatMap so claims the author is not haskell's >>=.  Is that important you ask? yes, let's first try to understand what haskll's` >>=` is.

For that purpose we move on and ask our `haskell` oracle (not the db), what the hell is `>>=` in haskell?  The answer from the book **[Learn You A Haskell For A Great Good](https://devatrest.blogspot.com.il/2017/08/book-review-learn-you-haskell-for-great.html)** which is an amazing book and it says, well, first it shows the definition of `>>=` which is:

```haskell
(>>=) :: (Monad m) => m a -> (a -> m b) -> m b
```

A Causion word about "box"


It talks about monad and we didn't explain yet what monad is so for our purpose whenever you hear now monad please think a `box`.  But the book warns against the box analogy.
 
> A word of advice. Many times the box analogy is used to help you get some intuition for how functors work, and later, we'll probably use the same analogy for applicative functors and monads. It's an okay analogy that helps people understand functors at first, just don't take it too literally, because for some functors the box analogy has to be stretched really thin to still hold some truth. A more correct term for what a functor is would be computational context. The context might be that the computation can have a value or it might have failed (Maybe and Either a) or that there might be more values (lists), stuff like that. 
 
 So, the it's about the `box` that contains a value and operations definition.  The book specify that it sometimes better to treat the `box` as a `computation context`, that is the context in which we run our computation, and the monad is that "thing" which stores this context.

Let's decompose it, you don't need to understand it all, just follow me:

1. `>>=` - The name of our function it's going to be `>>=` and may i add `:[]`.
1. `=>` - A class constraint meaning, `m` is a bloody `monad`.
1. `m a -> (a -> m b) -> m b` - This is the body of our function
1. `m a` - The argument to the function, we are going to take first an `m a` or a `monad of a`
1. `-> (a -> m b)` - We are going to peak into `m a` into the `a` and then apply a function which will evaluate to `m b`  this is the body of the, what we see here is the second argument the function which converts `a` into `m b`
1. `m b` this is just the output of our `>>=`.

Now the book **[Learn You A Haskell For A Great Good](https://devatrest.blogspot.com.il/2017/08/book-review-learn-you-haskell-for-great.html)** moves on and says:

> If we have a fancy value and a function that takes a normal value but reurns a fancy value, how do we feed that fancy value into the function? This is the main concern when dealing with monads. We write m a instead of f a, because the m stands for Monad, but monads are just applicative functors that support >>=. The >>= function is called bind.

What can we learn from it:

1. fancy value - a monad, in our case `m a` a monad of `a`, it is indeed fancy.
1. returns a fancy value - we see in the above declaration of `>>=` in haskell that the function evaluates to (last evaluation) to: `m b` this is a monad of b or in other words a fancy value! (moand of b)
1. How do we feed a fancy value into the function.  Well let's first see what they mean by "the function", we had: `(>>=) :: (Monad m) => m a -> (a -> m b) -> m b` - it takes as first argument `m a` which is a fancy value, but then our function which we feed in the `m a` is `(a -> m b)` which means it does not take a fancy value it just takes an `a`.  So how do we feed in the fancy value `m a` into the function which takes a non fancy value `(a -> m b)`.

The books continues to examine this and says:

> When we have a normal value a and a normal function a -> b, it’s re- ally easy to feed the value to the function—we just apply the function to the value normally, and that’s it. But when we’re dealing with values that come with certain contexts, it takes a bit of thinking to see how these fancy values are fed to functions and how to take into account their behavior. But you’ll see that it’s as easy as one, two, three.

What can we learn from this?

1. I think the most important thing is that it calms us down it's saying: `But you’ll see that it’s as easy as one, two, three.`.
1. The process of feeding the fancy value into a function which takes in a non fancy value is going to be what we are going to check.

Why do we use these fancy objects such as `monad`, `box`, `magician hat`? the reason is that when we do functional programming we like `val's` and we hate `var's` .  We like immutable objects and we hate mutable stuff.  This really helps when you build the core of your application this way.  Ofcourse in the real world you do have some state, although as pure meditationists might say that the world and time is not a series of mutations but as series of immutable objects.  Einstein has shown that time does not exist as a real thing at least not as we usually think of it, he has called this dimension `space-time` and in this `space-time` we view objects as morphing, but from the meditative point of view the `stream` of events is just a stream and nothing is changing, the world as it's current presence is always a single immutable point and is replaced by the next single immutable point in one view and in another view, it all exists it's only the space-time dimention which makes us think that things change.

Now, we use these fancy objects like `monads` in order to get over our base instinc to mutate objects in the world, they for one case allow us to carry a `context` and have that context for multiple operations to run without mutating any state.  Therefore `flatMap` allows us to carry out an operation with a context, this means **`flatMap` is really really the core of functional programing and not just flattening a map!**

Now compare haskell flatMap:

```haskell
(>>=) :: (Monad m) => m a -> (a -> m b) -> m b
```

Is taking a `fancy` value and running a function over the non-fancy-value inside it (the `a`).

to scala's flatMap signature:

```scala
def flatMap[B](f: (A) ⇒ BOX[B]): BOX[B]
```

Or the full signature of `flatMap` in scala for `List`

```scala
final def flatMap[B](f: (A) ⇒ GenTraversableOnce[B]): List[B] 
```

If you notice the signature we don't really see that the scala's `flatMap` takes a fancy value in or something like that.  Well as it turns out scala's flatMap is not a monadic bind, (the haskell notation is called a `monadic bind`).

As it turns out scala's `flatMap` is more general than haskell's `>>=` monadic bind.

In `haskell` the `>>=` bind requires the function we provide to generate a traversable type while the flatMap only requires that we can generate a traversable type from the output of the function so if you provide an implicit which can build a travesable type from the output like a list from an option than flatMap would work which takes us the the conclusion:

> scala's flatMap is more general than haskell's bind >>=

**Intuition for flatMap**

We discussed some complexity about `flatMap` so I think it's time to rest and discuss the intuition behind the flatMap

> Scala's bind for lists (shown above) is more general than Haskell's bind for lists. I am not comparing the general bind (Scala has no "general" bind, only classes which happen to have a flatMap, IIRC). In Haskell, we have a list-bind [a] -> (a -> [b]) -> [b] when in Scala it is more similar to [a] -> (a -> t b) -> [b] for a suitable t