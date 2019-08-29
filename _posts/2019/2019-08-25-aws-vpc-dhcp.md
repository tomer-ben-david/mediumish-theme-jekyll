---
title:  "AWS Networking DHCP and VPC"
date:   2018-03-13 05:18:00
subtitle: "AWS Networking DHCP and VPC"
categories: dev
permalink: aws-networking-vpc-dhcp
comments: true
featured: true
image: https://media.giphy.com/medzia/YN6qUXj4HdXoY/giphy.gif

---

## What is DHCP

DHCP is a pool or a range of addresses, which then devices receive. 

To get to DHCP in your VPC you ofcourse first click VPC in aws console

![Click VPC](https://i.imgur.com/ULYU3uE.png)

## DHCP Options Set

You can set options in AWS for which address from the pool devices would get.  So in AWS you can set the options such as DNS NTP NetBios servers - these are the options that devices would once they connect and get a new ip from your DHCP service this is called `DHCP options set`.

## Click DHCP Option Set

![](https://i.imgur.com/IeNIud8.png)

DHCP option set is actually configuration params related to how to setup address protocol on the device that received the conf from DHCP not only how to get the ip get ip but you can also set other options.

## Give DHCP option set a name

![](https://i.imgur.com/SqEkrTJ.png)_

## Give it a name

These are the options that new devices would get they would get the domain name the dns server ntp server etc.

- Give the new dhcp option set a name.
- Give it a domain name
- Provide the dns server can do it later.
- NetBIOS - do not need to set it.

Then just click create

![](https://i.imgur.com/2GDOKcQ.png)

And ! DHCP option set has been created

## Subnets and DHCP Options Set

For each subnet you might need to create DHCP options.

## Summary

For each subnet you might need to cretate dhcp options set.  DHCP options set allow you to configure the options clients get when they connect and get a new IP such as domain name, ntp server name etc.

`DHCP` itself is used to provide dynamic addresses where required within your `VPC`