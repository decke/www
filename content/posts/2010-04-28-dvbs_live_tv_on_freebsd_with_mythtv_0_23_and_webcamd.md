---
date: "2010-04-28"
title: DVB-S Live TV on FreeBSD with MythTV 0.23 and webcamd
slug: dvbs_live_tv_on_freebsd_with_mythtv_0_23_and_webcamd
tags: [ "FreeBSD", "MythTV" ]
---

It's not true anymore that FreeBSD does not support any DVB-S devices. Thanks to the work of Hans Petter Selasky on [video4bsd](http://www.selasky.org/hans_petter/video4bsd/) there are now DVB-S/2 devices for USB that just work. 

![](/images/2012/mythtv-0.23-DVB-1.jpg) 

The work on MythTV to get this running only took me one evening and was just because nobody compiled mythtv with v4l support lately. It also helped a lot that Jürgen Lock already played with the same device and found and fixes a few things. 
**So what do you need to do now if you want to build your PVR on FreeBSD?** 
First you need a USB device for DVB-C/DVB-T/DVB-S/DVB-S2 that is supported by webcamd. I took an Pinnacle PCTV Sat HDTV Pro USB 452e that supports DVB-S2 because I talked to Jürgen Lock and knew he had success with it. I don't know if there is already a list with all devices that work but you could have a look at the Makefile of webcamd in svn to see what drivers and cards should be supported. 
Now that you have a supported card follow the instructions on the [video4bsd](http://www.selasky.org/hans_petter/video4bsd/) page and build webcamd from the svn repository because the current version in ports is too old already. 
At last get the latest mythtv 0.23 port from the call for testers that enables v4l support. This will get committed when they have done their release. Finally start mythtv-setup and configure your v4l device, scan for some channels and watch live-tv with your brand new PVR solution on FreeBSD!
