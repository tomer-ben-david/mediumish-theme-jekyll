---
title: Scala, learning by understanding Functional Programming Terminology part 2
permalink: /scala-by-fp-terminology-lambda-map/
---
**Introduction**

`lambda`, who named lambda lambda? why did they call it lambda, is it simple or complex?

`map`, what is it? why name map - map? why did they call it map, is it simple or complex?

`functor`, why name functor a functor? what is it? why did they call it functor is it simple or complex?

In [Part 1](https://devatrest.blogspot.com/2017/07/introduction-have-you-ever-been-to.html) we have covered background on `FP`, why we should use, why not, where it's strength is and where it's weaknesses are.  In this part (2) we are going to move on and discuss more `FP` terminology.

**Lambda**

Is lambda a function? anonymous function only? a subset of mathematics? both? let's do some research:

[Wikipedia says](https://en.wikipedia.org/wiki/Anonymous_function)

>Anonymous functions originate in the work of Alonzo Church in his invention of the lambda calculus in 1936, before electronic computers, in which all functions are anonymous.[2] In several programming languages, anonymous functions are introduced using the keyword lambda, and anonymous functions are often referred to as lambdas or lambda abstractions. Anonymous functions have been a feature of programming languages since Lisp in 1958, and a growing number of modern programming languages support anonymous functions.

So what can we learn from this?

1. `lambda` -> anonymous function
1. `lambda calculus` -> give me a computation and i'll represent it in lambda calculus as anonymous functions
1. `lambda` -> a greek letter alonzo church have chosen to represent those functions or binding of variables to function.

In addition.  According to [stackoverflow answer with 812 upvotes](https://stackoverflow.com/questions/16501/what-is-a-lambda-function):

> Lambda comes from the Lambda Calculus and refers to anonymous functions in programming.  Why is this cool? It allows you to write quick throw away functions without naming them. It also provides a nice way to write closures. With that power you can do things like this.

So to sum up

1. `lambda` -> anonymous function.
1. `lambda calculus` -> computations expressed as math functions.
1. `lambda` -> alonzo church represents a function with this greek letter. 

**map**

If you tell a non `FP` developer, "hey I just wrote a function and I named it `map` what do you think it's doing?".  He might answer, "maybe something with google maps?" . Well actually you could name map `traverse` or something like that the thing is that if `FP` is closely related to functional programming, and functional programming is closely related to math then we had better stick with the mathematical terms as awuful and non descriptive as they are.  

In our case `map` is actually a good name, it's mapping from one item on our source structure to another item in our destination structure.  you cannot really deduce from the name only that the destination structure has the same shape as the source structure, but if you talk to mathematician he can deduce it, and we love mathematician's deductions, The great book **[Scala Design Patterns By Ivan Nikolov](https://devatrest.blogspot.com/2017/07/scala-design-patterns-book-review.html)** says:

>Following common conventions would make things much simpler

and this is exactly what the `map` name is all about.

Do you write loops? you do this all day right? Do you write loops that convert each item in a list into another? well map is exactly that, nothing special here, you do this all day.

`map` - are you iterating something and applying a function to ieach item?.  are you looping too much? maybe all the stuff you are looping on can inherit from something? let them inherit from map. 

[Martin Fowler in his great map article](https://martinfowler.com/articles/collection-pipeline/map.html) has a great image for map: 

![Map as Image](https://martinfowler.com/articles/collection-pipeline/collection-pipeline/map.png)

wikipedia mathematical declaration of map is:

>In many programming languages, map is the name of a higher-order function that applies a given function to each element of a list, returning a list of results in the same order. It is often called apply-to-all when considered in functional form.

well so we have `map` which iterates something and applies a function but wikipedia says:

`map` for scala list:

```scala
final def map[B](f: (A) ⇒ B): List[B]
```

First question comes to mind, we have just defined `map` to take a type parameter `[B]` but what about type parameter `[A]` why didn't we define it also?

Well, if you look at the definition of `List` trait itself you would see that `[A]` is the type of the list, so it's already defined.   

to define `map` in haskell on list which is denoted by `[]` , you do the below which let's you see the whole picture in a very compact way.

```haskell
map :: (a -> b) -> [a] -> [b]
```

so we have an input function from `a` to `b` and we transform list `[a]` to list `[b]` now you see why haskell is more compact and much easy to lern `FP` concepts, I told you.  But once you get the hang of scala it's rather good also.

Now in almost all languages you can see the same thing, transforming from one kind of element to another and the shape stays the same for you.. for exmaple in ruby

```ruby
[1,2,3,4].map {|i| i + 1}
# => [2, 3, 4, 5]
```

in closure:

```closure
(map #(+ % 1) [1 2 3 4])
;; => (2 3 4 5)
```

So we just take each element apply the map higher order function which takes another function, and it does it's mapping over the list and returns us a new list or the same object of the same type.

**Conclusion**

I think we have covered the basics terms here, `map`, `lambda`, which gives us the basis for functional programming, we have seen like our first higher order function map which takes another function, which is pretty awesome, in the next post we would continue to functor and friends.


**functor**

So we have `lambda` which for our sake is an anonymous function, we have map, which just tells us to go over each item and apply a function, let's get to `functor`.

according to a great [quora answer](https://www.quora.com/Functional-Programming-What-is-a-functor) about what a `functor` is:

> Any type f with a function like this (map) is a functor, with one additional restriction: the map function has to preserve the "structure" of the value it's mapping over

the great book **[Scala Design Patterns by Ivan Nikolov](https://devatrest.blogspot.co.il/2017/07/scala-design-patterns-book-review.html)** confirms that:

>You can conclude that standard Scala types such as List, Option, and others that define a map method are functors.

So functor refers to the types which have the map function and that the output structure is same as the original structure.

Do you have things that you can map over and get to the same structure only with different items? you do this all day, this is what a functor is, it's this thing you can map over and get with the same structure to the same structure only with different items.

so as we see it the functor is the thing that has a map function where we have a restriction that the output structure is the same as the input structure.  For list we want a list.

**FP Impurity**

As a final word I would like to talk about FP and impurity.

I know that sounds like an oxymoron but FP has impurity why? because it's a cruel world, you have to do IO.  FP has no solution for that.  FP will tell you do your pure core as big as you can and wrap that impure stuff with IO, it won't turn it to pure sutff it just wraps it in IO.  FP tells you well if you cannot make this function pure at least tell us in it's signature it's impure.  We like function signatures in FP.

Martin Odersky says [Questioning FP](https://webcache.googleusercontent.com/search?q=cache:Azjq01tGknsJ:https://groups.google.com/d/topic/scala-debate/xYlUlQAnkmE+&cd=2&hl=en&ct=clnk&gl=il)

>The IO monad does not make a function pure. It just makes it obvious
 that it's impure.
 
 So there is no silver bullet, if you start usimg IOMonad it just going to make your explicitly say that they are impure.
 
 
**Conclusion**

I think we have covered the basics terms here, `map`, `functor`, `lambda`, and discussed a little bit of impurity and how it goes along with FP.  Stay tuned for more items on our terminology list.

# Slide Version: Scala, Lambda, Map

---

# Lambda

---

# Functor

---

# Wikipedia on Lambda 

>Anonymous functions originate in the work of Alonzo Church in his invention of the lambda calculus in 1936

---

# What can we learn on lambda

1. `lambda`
1. `lambda calculus`
1. `lambda`

---

# Stackoverflow answer with 812 upvotes

>Lambda comes from the Lambda Calculus and refers to anonymous functions in programming

---

# Map

---

# Hey I just wrote a map function, what does it do?

---

# Map for scala list

```scala
final def map[B](f: (A) ⇒ B): List[B]
```

---

# Haskell list map

```haskell
map :: (a -> b) -> [a] -> [b]
```

---

# Ruby map

```ruby
[1,2,3,4].map {|i| i + 1}
# => [2, 3, 4, 5]
```

---

# Closure map

```lisp
(map #(+ % 1) [1 2 3 4])
;; => (2 3 4 5)
```

---

# Summary map, lambda next item is functor!