---
title: Scala, Learning FP By Terminology - Functor
permalink: /scala-by-fp-terminology-functor/
---
**Introduction**

`functor`, who named functor functor? why did they call it functor, is it simple or complex?

In [Part 2](https://devatrest.blogspot.com/2017/07/scala-learning-by-understanding.html) we have discussed what lambda and map means, why they are named as so, how they are defined and work.  In this post we are going to move on and discuss more `FP` terminology.  Specifically the weird term `functor` and 

**why named like this?**

The philosopher Rudolf Carnap, has originated the word functor, mathematics has borrowed it from him.  Again we see a tight relationship between philosophy, mathematics, and functional programming.  Now he was interested in logical analysis and in linguistics. He coined the term functor.

*functor* in linguistics is a *function word*

So now we need to understand what a *function word* is in linguistics.

according to [Wikipedia on function words](https://en.wikipedia.org/wiki/Function_word):

>function words express grammatical relationships with other words within a sentence, or specify the attitude or mood of the speaker. They signal the structural relationships that words have to one another and are the glue that holds sentences together. Thus, they serve as important elements to the structures of sentences.[3]

So we have many kind of words right? you konw noun, verbs, and now we also have "function words".

Note from the above definition that: functors or function words express:

1. **Relationships** with other words.
1. **Attitude** or mood of the speaker.
1. Signal structural **Relationships** that words have to one another.
1. **Glue** that holds sentences together.

So functors represent releationships between words and glue sentences.  Now let's see what functor means in our context, Functional Programming that is.

so: 

1. `function word`? --> too long
1. `funcword`? --> too clumsy and mixing up in computer science context
1. `functor` -> sounds cool and **sophisticated** this is what we want! 

**functor**

Well we are again not surprised that functor to functional programming is a term coming from mathematics and to mathematics coming from philosophy/linguistics, let's see how wikipedia defines this mathematical term don't worry if you absolutely nothing from this definition we would get back to it, the definition is scary!

[Functor math term by wikipedia definition](https://en.wikipedia.org/wiki/Functor)

> In mathematics, a functor is a type of mapping between categories arising in category theory. Functors can be thought of as homomorphisms between categories

Very unhelpful! we already said our posts is not directed to math oriented people.  But you know what i'm sure someone with both mathematical background could define it better for us and we are going to do that, let's go for it! we are going to discuss much more clearly what `functor` means!

So we have `lambda` we already said what it is: \for our sake is an anonymous function, we have map, which just tells us to go over each item and apply a function, let's get to `functor`.

If you check out the book "Programming In Scala" which is supposed to be the "scala bible", here is what it says about `functor`

>

That is not a mistake it says nothing about functor!  Yes, it's true this book is not about `FP` it's just about scala some would say about scala's syntax, but personally I think that without explaining the basic terminology underlying one's computer language it would be much more difficult to understand it.  Therefore we move on to other resources to understand what functor means. 

according to a great [quora answer](https://www.quora.com/Functional-Programming-What-is-a-functor) about what a `functor` is:

> Any type f with a function like this (map) is a functor, with one additional restriction: the map function has to preserve the "structure" of the value it's mapping over

Aha this makes much more sense! so if this answer is correct then any type which has the `map` function is a functor! Let's look a little more on some more resources lets see if they agree:

The great book **[Scala Design Patterns by Ivan Nikolov](https://devatrest.blogspot.co.il/2017/07/scala-design-patterns-book-review.html)** confirms that:

>You can conclude that standard Scala types such as List, Option, and others that define a map method are functors.

The amazin book **[Learn You A Haskell For A Great Good](https://devatrest.blogspot.com.il/2017/08/book-review-learn-you-haskell-for-great.html)** confirms that: 

>the Functor type class, which is for things that can be mapped over

More interestingly the book says that the best way to understand functor is simply to look at it's definition! so it's definition in haskell is:

```haskell
class Functor f where
  fmap :: (a -> b) -> f a -> f b
```

There is a very simple (I hope) and good depiction of functor at ["Professor Frisby's Mostly Adequate Guide to Functional Programming"](https://www.gitbook.com/book/drboolean/mostly-adequate-guide/details)

![functor image](https://tinyurl.com/y9lk579o)

so a Functor is just a class (type class but we didn't talk about it yet), so it's just a class with a single function! `fmap`.  This goes along extremely well with the fact that we said that functor is a type which has the function `map`.  But why `fmap` in our case and not `map` this is because we are referring here to the general case.  In our case here it's the definition of what a functor is, and it is any class which defines a function which takes a higher order function from `(a -> b)` from any a to any b. now the functor value `f a` when applied with the function `(a -> b)` evaluates to the functor value `f b` that's it.  If our `f` is an array it would simply be:

Now you may ask, why do we have not only `f a` but also `f b`.  The reason is that the output or the *evaluation* of the map function as FP people like to call it, is also a functor, we talked about it when we explained the map function, the output or the evaluation is boxes in the same shape as the original data type.  And as the original data type was a functor (it had a map function), that means that the output data type is also a functor.  hurrah!

```haskell
map :: (a -> b) -> [a] -> [b]
```

a function `(a -> b)` applied to functor value `[a]` evaluates to functor value `[b]` yes `[b]` is also a functor value because we can also apply map to it!

So functor refers to the types which have the map function and that the output structure is same as the original structure.

Do you have things that you can map over and get to the same structure only with different items? you do this all day, this is what a functor is, it's this thing you can map over and get with the same structure to the same structure only with different items.

so as we see it the functor is the thing that has a map function where we have a restriction that the output structure is the same as the input structure.  For list we want a list.

So let's get back now to the scary wikipedia mathematical definition:

[Functor math term by wikipedia definition](https://en.wikipedia.org/wiki/Functor)

> In mathematics, a functor is a type of mapping between categories arising in category theory. Functors can be thought of as homomorphisms between categories

and [wikipedia definition of homomorphism](https://en.wikipedia.org/wiki/Homomorphism)

>In algebra, a homomorphism is a structure-preserving map between two algebraic structures of the same type (such as two groups, two rings, or two vector spaces). The word homomorphism comes from the ancient Greek language: ὁμός (homos) meaning "same" and μορφή (morphe) meaning "form" or "shape".

if a functor can be thought of as a homomorphism and homomorphism is a structure-preserving map between two agebric structures of the same type this is exactly what our `map` is so functor is the type of mapping which maps between ategories, and the type which is functor is the type which has a map!

Now that we have covered `functor` let's see what functors are in scala:

**Practice**

As a good practice we are going to create our own functor.  You should already know be able to tell taht Option, List, are all functors 

for example if we have the type `MyOption`

Let's start by declaring MyOption trait:

```scala
trait MyOption[A] // MyOption would be an option on any type we want it to be for now it's just A ...
```

Now we said we want MyOption to be a functor so let's add map to it:

```scala
trait MyOption[A] {
  def map[B](f: A => B): MyOption[B] // MyOption will have an inner type A, map would map from A to MyOption[B] same container it's map.
}
```

Let's implement the body of map, it should apply the function f to every parameter

```scala
trait MyOption[A] {
  def map[B](f: A => B): MyOption[B] = if (isBoxEmpty) MyNone else MySome(f(this.get)) // Cool but it does not compile yet
  // What we are saying here is that if we are already MyNone then we simply return MyNone nothing to apply function on
  // but if we do have something we first apply the function f and then BOX it back into MySome
}
```

Now MyOption can be MyNone or MySome let's start by implementing MyNone, MyNone is a single value so it can just be an object, also it's isBoxEmpty is simply true

We first need to fix an issue with MyOption as it's define as MyOption[A] if we want to return an object MyNone it would need to have a type parameter which type parameter should we provide to MyNone[?] as it turns we want to return the type parameter which would match any type we provide as A and it's Nothing.

Therefore our updated implementation of the trait MyOption is:

```scala
trait MyOption[+A] { // we hae + otherwise how would you be able to return the subtype MyOption[Nothing] it's nto MyNone[A]! + allows for children!
  def isBoxEmpty: Boolean
  def map[B](f: A => B): MyOption[B] = if (isBoxEmpty) MyNone else MySome(f(this.get)) // Cool but it does not compile yet
  // What we are saying here is that if we are already MyNone then we simply return MyNone nothing to apply function on
  // but if we do have something we first apply the function f and then BOX it back into MySome
  def get: A
}
```

And now we can move on to define MyNone:

```scala
object MyNone extends MyOption[Nothing] { // it's nothing so it matches any type! (Nothing matches any type!)
  def isBoxEmpty = true
  def get = throw new NoSuchElementException("Hey i'm MyNone i have nothing!")
}
```

And accordingly MySome would be:

```scala
case class MySome[+A](x: A) extends MyOption[A] { // We initialize the value with MySome constructor that's the x: A
  def isBoxEmpty: Boolean = false // It's never empty we have MyNone for the empty case
  def get: A = x
}
```

Now let's write a simple app that uses it:

```scala
object MyApp extends App {
  println(MySome("dude ive just been Somed!"))
  println(MySome("dude ive just been Somed! - Here you are out of the box!").get)
  println("What would get printed for nothing? " + MyNone.map(_ => println))
  println("Lets do some mapping on some something: " + MySome("something..").map(_ * 4))
}
```

```text
MySome(dude ive just been Somed!)
dude ive just been Somed! - Here you are out of the box!
What would get printed for nothing? com.tms.diy.executiontracker.MyNone$@eafc191
Lets do some mapping on some something: MySome(something..something..something..something..)
```

cool so we have MyNone and MySome! :)

For the sake of completeness look at the below code:

```scala
trait MyOption[+A] { // we hae + otherwise how would you be able to return the subtype MyOption[Nothing] it's nto MyNone[A]! + allows for children!
  def isBoxEmpty: Boolean
  def map[B](f: A => B): MyOption[B] = if (isBoxEmpty) MyNone else MySome(f(this.get)) // Cool but it does not compile yet
  // What we are saying here is that if we are already MyNone then we simply return MyNone nothing to apply function on
  // but if we do have something we first apply the function f and then BOX it back into MySome
  def get: A
}

object MyNone extends MyOption[Nothing] { // it's nothing so it matches any type! (Nothing matches any type!)
  def isBoxEmpty = true
  def get = throw new NoSuchElementException("Hey i'm MyNone i have nothing!")
}

case class MySome[+A](x: A) extends MyOption[A] { // We initialize the value with MySome constructor that's the x: A
  def isBoxEmpty: Boolean = false // It's never empty we have MyNone for the empty case
  def get: A = x
}

object MyApp extends App {
  println(MySome("dude ive just been Somed!"))
  println(MySome("dude ive just been Somed! - Here you are out of the box!").get)
  println("What would get printed for nothing? " + MyNone.map(_ => println))
  println("Lets do some mapping on some something: " + MySome("something..").map(_ * 4))
}
```
  
**Conclusion**

Functor as weired and frightening as this name sounds is a very simple concept's mapping from one category to another, so functor require the map function to exist as simple as that.



**FP Impurity**

As a final word I would like to talk about FP and impurity.

I know that sounds like an oxymoron but FP has impurity why? because it's a cruel world, you have to do IO.  FP has no solution for that.  FP will tell you do your pure core as big as you can and wrap that impure stuff with IO, it won't turn it to pure sutff it just wraps it in IO.  FP tells you well if you cannot make this function pure at least tell us in it's signature it's impure.  We like function signatures in FP.

Martin Odersky says [Questioning FP](https://webcache.googleusercontent.com/search?q=cache:Azjq01tGknsJ:https://groups.google.com/d/topic/scala-debate/xYlUlQAnkmE+&cd=2&hl=en&ct=clnk&gl=il)

>The IO monad does not make a function pure. It just makes it obvious
 that it's impure.
 
 So there is no silver bullet, if you start usimg IOMonad it just going to make your explicitly say that they are impure.
 