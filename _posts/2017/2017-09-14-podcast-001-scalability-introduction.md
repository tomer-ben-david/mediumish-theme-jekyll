---
title: Scalability Introduction (Podcast)
permalink: podcast-001-2017-09-14-scalability-introduction
category: podcast
date: 2017-09-14 12:00:00
number: 1
duration: 11:36
length: 7025459
mp3: https://archive.org/download/001DevPodcastScalabilityIntroduction/001-dev-podcast-Scalability-Introduction.mp3
---

This is For Software Engineers Podcast Episode 001

<iframe src="https://archive.org/download/001DevPodcastScalabilityIntroduction/001-dev-podcast-Scalability-Introduction.mp3" width="300" height="80" frameborder="0" webkitallowfullscreen="true" mozallowfullscreen="true" allowfullscreen></iframe>

**Introduction**

Scalability is not only an interesting topic but, it is also **a topic where it's really difficult to find well-organized resources for its proper study**.  It's very difficult if not impossible to find the necessary scalability resources teaching you from zero and getting you to be a software engineering expert on the subject.  You need to gather your resources. This is why we are very much interested in pushing through and trying to evaluate what scalability is and how to achieve it by finalizing and organizing the topic.
 
 **Scalability - it's not only about architecture/servers**
 
The first question to ask about scalability is whether it is a business problem or a technological problem.  Well, you can think originally about scalability as mere high-tech problem where you need to scale your databases or services. However, you need to remember that the scalability problem has been existing throughout the human history.  We needed to know how to scale our food growth.  We need to know how to scale our car manufacturing.  You see, scalability happened before silicon valley got filled with programmers. 

At your high-tech business, you can view the scale-it challenge as a reflection of real physical processes scaling, these physical processes also need to scale.  When we discuss scalability it is not merely a technological aspect it is not just a set of diagram or blocks you draw on the whiteboard or just scaling requests into multiple servers. 

It's a real-life situation and a problem which you solve in surprisingly similar ways in both low-tech and high-tech industries. When you have an organization you have people.  Some of these people are responsible for creating your architecture, maybe the architects or the senior developers, or, if you are a small company then all developers are doing architecture! ofcourse it's best that also in a big company all developers are in a position to create their architectures but still there is someone or a few architects on the top.  So - scalability is first and foremost a people and business 'thing' to deal with! The people are creating the architectures so we need to scale our business by enabling our people to create scalable architectures, we first need to enable the people!

**Humans Create Architecture**

When we are talking about scalability we should see in front of our eyes people who are creating technology.  An organizational structure as far fetched as it can be seen in developers eyes is actually rather important in that manner.  The structure questions such as what should be the team size? When considered and answered well - would cause you to be able to create better an architectures.  Now, when you choose your way organization structure you need to take into account a few considerations and some of them are how much communication do you need between with people.  You want the least amount of communication which will allow people to do a great job.
 
 Obviously, if people need to communicate too much one with another, then not only your business will not grow fast, and will not be scalable but also the architectures they create will be less optimally aligned with the solution you want. 
 
**Breaking The Rules** 
 
Another question to ask is whether you should have rules.  A tight rule system in your possession have implications.  You can choose to have very tight rules and processes but it can also hinder your ability to scale. That is because, **if you impose too many rules on the people** they have some less space to take off, and, when you scale you need to break some rules.  Now, you can say that you apply a rule that enables people to break the rules.  But usually this is a snitch, and you need to be able to break your rules in a more natural way.  **In order to scale you need to be able to have creative thinking and creative thinking requires breaking the rules**.  
 
**CEO's - software engineers or not?**
 
Let's take like the five top IT companies like Amazon, Google, Facebook, Twitter, Microsoft.  You see that the CEOs are coming from a technological background, which makes you think that a person with the technological background can create in today's atmosphere a more scalable solution or ideas, now, it is indeed very important for anyone to be aware of the architectural decisions your people make, it's super important but it's not a top must, airbnb founders are not technical.  We will just say here that it's a very high recommendation, it's best of course if the CEO is coming from technological background, but marketing, finance, and more aspects are also super important, we are developers, we tend to disregard these aspects but hell they are important and CEO should be very well familiarized with them.  The claim is this, it's easier for a software engineer to learn finance than the other way around. The CEO should at least understand the core concepts, as an engineer you tend to disparage about them, marketing, finance, are very very important to be only a few of the possessions of the CEO.  
 
**The beginning of scaling**
 
When you take any solution or any product you create, the basic question to ask is, how do you scale it when you have multiple ways of doing that process. First, you can **duplicate**, I mean, if you have one person servicing the requests coming for the customers, then, you can simply like duplicate, or hire more people.  

**The same goes with the servers**, if, you have like mainly a stateless server, then, the basic way in which you scale your solution is to simply create duplicates of this server.  Now this is the simplest solution and it has its drawbacks, but, it has many advantages.  The main advantage is that it is very very simple to implement, but, it is also a limited one - because you cannot always do that, you need to design your services first to support that.  So the first rule that we had is that if you have a solution or a service or a server that you create uf it is mainly stateless then you can simply duplicate it.  The same goes with a database which is yet another service, or a file system - yet another service. Whatever you have simply duplicate if the service was built for it! This would allow for servicing more requests - easily. 

**When you have state**.  Now usually what people are doing is that if you need to store some state then if you have a database which is specific for state storage, then you prefer storing the state there, and not in the app layer, because if you store it in the application server then you have the problem of which server to access in order to get or store this state.  Because if we have let's say a user named John and we want to update its name - so if we access one server and update its name and in parallel let's say that we have another process which updates its address and it accesses a server, then, the problem might be that one update one my state is conjuring with another update. 

You might simply overwrite the other change so what many solutions do is that they require you to contact one server to do all the writes, all writes are going through one server, a so-called "master".  A single server and then via replication delegates and replicates.  And you read fro the slaves.  If you don't want to do that then depending on your specific scenario you might need to apply some solutions which can do it in a more distributed way - they are called an agreement protocol like raft or Paxos, but they are more aligned with configurations than real time data, there is an agreement overhead for using them. 

In this way, you can like contact more than one server for an update, as we are able to contact one of a few servers to get the response we have scaled our system.  With agreement protocols the servers need to agree on the result, they do some processing for that purpose and communication.  Because before they agree, they ask themselves if they are actually updated with last value, but, what is important to understand from this simple first rule is that we simply duplicate our service this is rather a trivial right - assuming you designed for it.  

**Your Money or Horizontal Scaling!**
The basic scalability **technical** issue is all about having your services serve more unit of works with more resources.  For that in today's world we utilize in most cases horizontal scaling, we prefer that over vertical scaling, while we would elaborate on that in future posts, let's present the basic plot for you to know about vertical vs horizontal scaling cost!

The below diagram shows the difference in cost for vertical scalability vs horizontal one.

![Web Scalability For Startup Engineers](https://cdn-images-1.medium.com/max/1600/1*Q04Whj8FX5qNt7rjAHy95w.png)
The Image Is Taken From: [Web Scalability For Startup Engineers](https://techblog.planetizer.com/book-review-web-scalability-for-startup-engineers)

The author shows that scaling horizontally for example with CDN is not only cost-effective but often pretty much transparent! “The more traffic you generate, the more you are charged by the provider, but the cost per capacity unit remains constant”.

**Choose simple solutions**

We simply duplicate our service so we can service more a request and you can do this as we said in any component - we simply duplicate the instances of the database - you duplicate the instances of the services.  Now, this is **very naive** but it's good actually it's good that it's naive because it forces you **to choose simple solutions**. As long as you manage to be smart and choose simple solutions which answer properly your problem, then you can apply this all scaling issues.  Now we will see in further posts that **when you cannot apply such a simple rule** or when your scale is too high then you cannot simply use this method.  You will need to apply more methods into your scalability and solution so the first rule is simply to duplicate it's very dumb.  And if you cannot do that, you will need to apply other scaling methods such as **sharding** etc but let's leave that to the next posts.

**We have only scratched the surface**

Hey, we have only scratched the surface here, but this got long enough, i'll get back to the more interesting topics and internals in future posts.  The bottom line of this post is, scaling is not only a technical problem, scaling is much about if you can find a simple duplication pattern, scaling is about splitting by functionality, scaling is about sharding data and services, and last and not least try to do it with commodity hardware in a horizontal scale way!
