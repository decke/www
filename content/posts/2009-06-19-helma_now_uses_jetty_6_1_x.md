---
date: "2009-06-19"
title: Helma now uses Jetty 6.1.x
slug: helma_now_uses_jetty_6_1_x
tags: [ "Programming" ]
---

The [Helma](http://www.helma.org/) patches that i've worked on in the jetty6 branch are now finished and hannes merged the branch to trunk. So Helma 1.7.0 will use Jetty 6.1.x if no major problems arise. 
Why have i done that? Jetty 6 is nearly a complete rewrite with a much better architecture that lets you do things you couldn't do with Jetty 5 (Filters, QoS, ...) and should also give higher performance because of Java NIO. I've let you know if that really improves Helma performance once i've done some benchmarks. 
You don't know Helma? Helma is a server side JavaScript Framework and Application Server. It's what keeps [ORF.ON](http://orf.at/), [club3k.at](http://club3k.at/), blogr.com, twoday.net and a lot of other sites running.
