---
date: "2012-06-03"
title: Ports QAT functionality integrated into redports
slug: ports_qat_functionality_integrated_into_redports
tags: [ "FreeBSD" ]
---

We used to have a FreeBSD Ports QAT machine that did automatically build all affected ports after a commit. Well that machine is down since quite some time now because of an hardware defect I think. In my plans for redports I started quite early to think about integrating the QAT service so I talked to itetcu at BSDDay in 2011 about the current implementation of the QAT system. It works by parsing the ports CVS mails to find out which ports are affected by the commit. Then it updates the CVS tree from one of the tier1 CVS mirrors and hopes to have a consistent portstree. After that it schedules new jobs in the Ports Tinderbox and sends out mails to the committer if building failed. That worked fine most of the time but it had quite some weak spots which required to constantly look after the machine to keep it going. 
The most important thing that I learned from that was that we need to migrate our ports repository from CVS to something that allows a consistent checkout. Now that beat is working on the cvs to svn migration and has a testing repository I used that to implement QAT functionality into the redports infrastructure. Instead of parsing CVS mails I can use svn info to find new commits and consistent repository checkout is also guaranteed by subversion. After all it took me about one working day to fully integrate the QAT functionality and test the new stuff. 
There are a few benefits for the upcoming QAT system now that it is a part of the regular redports infrastructure:

* access to all redports building machines (more power!)
* parallel builds on multiple boxes
* archived buildlogs
* run QAT jobs for multiple FreeBSD versions/architectures
* nice web frontend with RSS feeds and the usual modern stuff
* you still get mails of course

![](/images/2012/redports-qat.png)
