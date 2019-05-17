---
date: "2012-12-20"
title: Personal story of a ports committer
slug: personal_story_of_a_ports_committer
tags: [ "FreeBSD", "Personal", "VirtualBox" ]
---

You all know that sometimes you end up dealing with all the ugly stuff instead of doing useful work. Over the last few months I was kept busy at $dayjob got assimilated by portmgr and had to look after redports. All of those new challenges are nice on it's own and I really enjoyed being part of the FreeBSD community and ecosystem but then 11/11 happened. 

At that day quite a lot has changed for me since redports was isolated as a precaution and all ports building clusters of portmgr were effectively shut down. That situation was quite a mess since all automated systems and clusters were gone. No INDEX builds, no QAT, no pointyhat so also no exp-runs anymore. Whenever someone broke the ports tree we didn't even knew. It proved to be quite hard to get back on track again after that incident. INDEX checks and a very very limited QAT are already running again but pointyhat and redports are still dead. :( 

The daily frustration and dealing with all that strange decisions that are taken because of the need to get stuff done is hard sometimes. But It's almost Christmas and without redports I have much more spare time so I try to calm down and focus on stuff that I can hack on my own. And that worked out quite nice so far ... 

**tvheadend:** 
I've noticed in the XBMC 12.0 release notes that they have included the PVR branch and thus support DVB-S2/C/T in XBMC. Well actually they only provide some backend configuration interfaces and rely on a backend like mythtv or tvheadend to handle the DVB stuff. Mythtv would be okay for that task but It's huge for such a small job. Tvheadend is a nice and small TV streaming server that suites perfectly and only does the bare minimum without a lot of dependencies. Configuration is done in a web based GUI or can be done in XBMC. So I started working on a tvheadend port. A few weeks later I'm at the point now where tvheadend compiles fine and also starts. I've just ripped out all that epoll stuff and linuxisms that I stumbled accross so it doesn't run properly yet. Adding kqueue support is the next step now. 

**virtualbox:** 
Due to redports being unavailable the vbox work has also frozen. I tried to collect all that patches and complains in my inbox so that they don't get lost. Since the situation did not improve I temporary created a github repository for the virtualbox ports and committed all the accumulated patches there.
