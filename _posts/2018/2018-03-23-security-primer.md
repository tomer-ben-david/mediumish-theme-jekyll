---
title:  "Security Primer"
date:   2018-03-13 05:18:00
subtitle: "Basic Authentication, SAML, Identity Provider, Service Provider, JWT, OAuth, SSO and friends"
categories: db
permalink: git-primer
comments: true
featured: true
image: https://media.giphy.com/media/YN6qUXj4HdXoY/giphy.gif
---
Here is what I learned last week about security.

If someone wakes me up in the middle of the night and tells me Houston we have a problem with `SAML` and I think SAML is like a spaceship of the kreons from my latest dream I will open this note and find out that **it's actually an authentication and authorization mechanism and not a kreon spaceship.  Or maybe it is? ;))**. Let's dig in below and find out!

Security is one of those topics where you have **so much of terminology** going on, that it feels like you need a **security dictionary**.  Below are some of the main terms and concepts in security.

**Note! you already know what security is, you just need to connect the intimidating terms to what you already know about security from real life!**

## Is SAML a SpaceShip or a Coffee?

Security is mostly about correctness.  You want to be sure who is that person/service you talk to (**authentication**).  And you want to verify that that personal service is doing only what it's allowed to do. (**authorization**)

We are going to scan quickly the below terms:

```bash
1. Basic Authentication => When mama and papa thought about security.
2. SAML => When large corporates thought about security.
3. OAuth 2.0 => The foster child of mama, papa, and large corporates.
4. JWT => The startup kid buying a coffee paying with json
5. Tokens => Trading sheep for online services.
6. Authorization Bearer: <token> => The all mighty header.
7. Keys and $$$ => Give me the bottom line how do I make $$$ out of security.
```

# Basic Authentication

This is as basic as it gets.  You ask that user or service for something only he knows to prove his identity.  We use the username and some secret, the password.

## Authorization: Basic Base64(user,pass)

Basic authentication did not specify you need to encrypt the details you just need to base64 them.  So it's clear text.

### Cleartext! use https for encryption

But as it's cleartext you want to encrypt it, otherwise anyone on the wire or anyone with access to the service would be able to see your credentials. So you use encryption, https.

# SAML

We finished with protocol number 1 basic authentication.  Protocol number 2 `SAML`.  (Security Assertion Markup Language).  

## Authentication and Authorization

Think if it as another protocol for authentication (like basic authentication) but it also supports authorization.  Which means it would also tell what you are allowed to do.

## XML

SAML was originated in the days where XML was the king so it's not surprising SAML protocol passes data for credentials and authorization with XML.

## Parties

In SAML we have two parties.

1. Service provider, **You can buy a coffee from a service provider.**
2. Identity provider, **You prove who you are with identify provider, is much different than buying a coffee even if it smells really good!**

### Service provider

This is the grocery store, it's interested in selling me groceries, not about identity management, so it will use the identify provider to identify me in order to authorize and authenticate me.

### Identity provider

The identity provider is all about managing identities and what they are allowed to do.

### Provides Standard SSO

SAML provides standard `SingleSignOn` so you can use your same identity to sign on to multiple sites, that's cool, that's just like how you use google to sign in to different services only this time it's the SAML protocol.  You see you already knew what SAML is all about.

### Authentication exchanged with digitally signed XML

By digitally signed it means we can prove who is the one that signed your authentication data.

### Complex

Last but not least SAML is more complex than modern SSO methods such as OAuth 2.0. So let's move on to OAuth 2.0, shouldn't we?

# OAuth 2.0

**What about 1.0 you ask?** it was more complex so we moved to 2.0 where we need to do fewer operations for our auth

## NOT Authentication

**I repeat oauth2.0 is not an authentication protocol** it's about authorization.  This does not mean however we do not use OAuth for authentication, **OpenId** is a protocol on top of OAuth2.0 which serves for authentication.

## Authorization

You use oauth2.0 for allowing services to check if you or services are authorized to do operations.

## HTTP

OAuth does not internally encrypt anything, it does not demand you for, it does not enforce you to use https or another encryption mechanism, but you might find yourself using these, but just remember there is no https or encryption built-in inside the protocol itself.

## Tokens are the new Credentials

Remember credentials? username/password? forget about them, we now use tokens instead.  This is the same, you have some key which is like your username and you have some secret key which is like your passwords, **say tokens do not say username password although it's pretty much the same**.

## Change from 1.0 no need to sign each call

In OAuth1.0 you needed to sign it call oauth 2.0 simplifies it with the token provided to you-you just pass along this token no need to resign.

## Access token and-or refresh token

You use access token and/or a refresh token in order to renew your access token.services.

### getAccessToken(refreshToken)

So basically to get a new access token you just call getAccessToken with an input refresh token to get the new access token to access the services.

## Authorization: Bearer <access token>

In basic authentication, OAuth, and wherever you go you will see this header:

`Authorization: Bearer <access token>`

You simply **Always** use this header for your services access.

## JWT

**This is the new kid in town and everyone thinks he is so cute!** Why is that? because of this great new invention:

You don't only put authentication authorization in the security data you put also some real data! for example **"and I'm allowed to get a free coffee! - a claim"**.  This is one of the greatest inventions of the 21st century (or not :).

### Extension of OAuth 2.0

JWT is simply an extension of OAuth 2.0 so it's like a foster child.

#### access token with claims

So you can specify with JWT that you are allowed to get a free coffee this is the "mindblowing" claim part.

#### Authorization: Bearer <JWT>

Yeah we use again the boring `Authorization: Bearer <JWT>`

##### header, payload, signature

You have 3 parts in JWT

1. Header (metadata)
2. Payload (coffee)
3. Signature (it's me)

#### HMAC-SHA256

This is the protocol used to Hash the message.

##### hash with the secret key to compute the signature

HMAC - Hash with a secret key to generate signatures.

### Stateless data api data repassed from client

**So JWT is about statelessness you pass the data from here to there and back it's all in the JWT**

#### instead of the traditional session on the server

You pass the data in the JWT so you less need to store data in the server.

### Usage

What do we use JWT for?

#### Authentication

We use it for authentication ;)

#### Secure information exchange

We use it to pass security information!

##### signed with public/private keys verify content has not tampered

This is because we sign the data so we know it was not tampered with!

# API Keys

**username password for machines**. Like bitcoin to dollars.

## Identify caller/application

You can identify who is the caller application because you give each caller its own key.

## Monetize API

Now that you know who called you-you can charge him **$$$ for using your api!  (he used the API key to access you, he should pay for that).**

# Resources

[https://tomer-ben-david.github.io](https://tomer-ben-david.github.io)
