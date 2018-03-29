---
title: Scalability And Startsups (Podcast)
permalink: podcast-002-scalability-part-2
category: podcast
date: 2017-09-29 12:00:00
number: 2
duration: 11:27
length: 11249664
mp3: https://archive.org/download/tomerbd1_gmail_002/002.mp3
---

https://archive.org/download/tomerbd1_gmail_002/002.mp3

This is For Software Engineers Podcast Episode 002

<iframe src="https://archive.org/download/tomerbd1_gmail_002/002.mp3" width="300" height="80" frameborder="0" webkitallowfullscreen="true" mozallowfullscreen="true" allowfullscreen></iframe>

Scalability Part 2 is it possible to bake in scalability into a startup.  Should we do that at all? How fast can we move on with our software development.  The answer is a basic design issue which we should take into account and discuss.
 
 
 so this is a scalability part two and today I want to continue to discuss
 the topic of a scalability and doing
 this by asking the right questions so
 the first question we are going to ask
 is the whether it is possible to bake in
 scalability a into a startup now even a
 better question would be that if you are
 already a startup whether you want to
 bake scalability in because if you will
 do that then obviously this would have
 implications on how fast you can move on
 with your software development so the
 answer to that I think at least in my
 mind is very simple and it is that first
 you should be aware of what scalability
 means and this is what we are going to
 discuss in this episode and once you're
 aware of it then you should not block I
 mean you should design your software you
 don't have to implement scalability from
 zero from 4f4 a little fast going if you
 don't have really too many customers I
 mean if you have two customer 10
 customers 100 you still even many more
 right you still don't need the
 scalability in your tool set however
 what you need to know is that what is
 better doing is that is that you you
 what you baking is not the solution is
 that when it comes the time that you
 need to change your architecture that
 you do you want need to recreate
 everything from scratch so there is this
 other possible
 they may be that you know that when the
 times the time will come you will be
 able to recreate everything so in this
 case this is okay but you don't really
 know that and if you don't know that
 then the thing is that with very little
 effort you can avoid doing this
 revolution and this recreation or
 rewrite of the whole codebase and how
 can you do it you can do it with simple
 steps for for example if you have a data
 base you can always abuse the database
 or or utilize it to the end you can use
 every little
 non standard SQL if it's a relational
 database every little non-standard query
 into this database and just use it all
 over the codebase and then when times
 come you have and you need to you
 understand you want to change the
 database man because it costs too much
 money we want to move to an open source
 solution then you find out that you need
 to rewrite many of your qualities and
 maybe it impacts all of you all of your
 software but if you want your software
 in a way that when you access the
 database you don't you less care which
 database you access you less care
 whether it's an even NoSQL or relational
 database you just do get into the
 database get by key and set by King and
 maybe you do some searches and when you
 have some specific queries then you move
 them to the side to specific files when
 later you can take those specific files
 even you you can call it by simple by
 specific names also so that later on
 when you move on to a different kind of
 database or when you change your
 architecture and you cannot do these
 complex searches on your database I mean
 you need to change somehow the way you
 do searches maybe you now have shouting
 we'll talk about this concept in the
 future so so that in the future it will
 be much easier to access data but the
 database so if you are using MySQL then
 then first I will recommend you for
 example right to use another layer of
 abstraction now when we say another
 layer of abstraction you might think oh
 this is going to take me too much time
 to create this layer but but no it just
 means another class or or whatever that
 whenever you call the database you first
 call it and it chooses the
 implementation and instantiate it for
 you
 oh if you have a different way now we
 are also not found
 of over-engineering so you should be a
 very careful not to over engineer your
 solution so we are talking about very
 simple things I didn't really mention a
 map that loads the type of the database
 form a configuration and this
 configuration is injected and stuff like
 this all I said is that when you call
 your first database you go to another
 function which is general one and it
 calls your database this is the right
 amount of engineering and if you feel
 you need if you really feel you need
 more engineering then you can move it to
 a configuration file but right now when
 you're early on all you on your startup
 then you have a single database so don't
 over engineer it so so there is this
 this balance that you always need to
 take care of of of an engineering that
 will cause you also to slow down and
 under engineering that will cause you
 very bad implications even the future if
 you get too much specific in your in
 your solution and this question is also
 a very major one when we discuss the
 whole topic of scalability how much
 engineering should you put into your
 solution or how maybe how much over
 engineering should you put into your
 solution so that in future when you need
 to do this these very factors when you
 need to do these changes when you need
 to go high then it will form one hand be
 easy and from the other hand be easy for
 your current software developers to
 develop your code and be happy with it
 and not mess all day with
 over-engineered code so the answer to
 that is is a little bit of art I mean
 there is not no specific solution
 but but the main guideline is first that
 you need to engineer your code first so
 that it will be clear and clean and
 those are other aspects but they are
 related because many times a non-count
 means over-engineered code so it should
 be first clean and and by clean we don't
 mean too many obstructions it means it
 means in general that that you should
 always try to read your code and
 understand from the user perspective
 whether it is clean and clear for the
 riddle of the code and you should apply
 different use cases such as ask yourself
 ok what if I need to change the database
 ok I will I need to refactor the whole
 thing and again if you understand that
 you need to refactor the whole thing
 this is this is not really a good point
 but if you understand that you have a
 set of queries or a set of procedures
 that reside on the side on some specific
 place that only them you need to take
 and change then this is a good point
 now if you rely on the architecture of
 your database let's say for a
 replication of some kind of shouting
 then it's ok it's a great however the
 recommendation is to utilize a minimal
 set of features which you can form your
 database which will satisfy you I mean
 it's okay to use feature formed a
 various databases migration from one
 kind of database to another will never
 be easy however sometimes you need to
 note that databases try to push you and
 when those try to push you into
 utilizing features which
 you can you which you don't necessarily
 need and which you can with very little
 overhead have a simple implementation so
 over designing in this way and over
 using and abusing the features of
 database can sometimes harm you this is
 very delicate and it's not correct for
 all cases but in most cases I can see
 that you can utilize the database in
 your favor and the database both to you
 and it not you and your architecture is
 boring to the database you should
 utilize it and not be abused by it and
 with that we ended this episode and I
 hope you enjoyed it and see you next
 time
 thank you for listening
 you