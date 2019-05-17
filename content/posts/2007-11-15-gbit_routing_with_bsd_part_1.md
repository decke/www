---
date: "2007-11-15"
title: GBit Routing with BSD [Part1]
slug: gbit_routing_with_bsd_part_1
tags: [ "FreeBSD", "Hardware" ]
---

Da [ordentliche GBit Router](http://www.juniper.net/products_and_services/j_series_services_routers/index.html) viel zu teuer für mich sind bin ich derzeit auf der Suche nach einer möglichst stromsparenden (da 24/7 Betrieb zuhause) Lösung die annähernd 1GBit routen kann. 
Meine ersten Benchmarks haben mich deshalb dazu geführt erstmal alle GBit Karten auszuprobieren dir mir zur Verfügung stehen. Das Resultat ist recht eindeutig. Mit billigen PCI GBit Karten erreicht man meist um die 500MBit. Wenn man mehr will sollte man etwas Geld in Intel PRO/1000 Server Karten investieren (oder einen Blick auf Intel Server Boards werfen). 
Der anschließende Routing Test mit [pf](https://www.openbsd.org/faq/pf/) und _netperf_ hat gezeigt, dass der zusätzliche Overhead durch _pf_ bei dieser Geschwindigkeit nur bei ein paar Prozent liegt. Bei **780MBit/sec** konnte ich einen Athlon64 3800+ mit _FreeBSD 7_ und billigen GBit Karten trotzdem zu 100% mit Interrupts auslasten. 
Der Vergleichstest mit [OpenBSD 4.2](http://www.openbsd.org/) war eher ernüchternd. Scheinbar passen noch ein paar Einstellungen nicht denn bisher erreiche ich nur 180MBit/sec aber die CPU ist dabei zu 70% idle. 
Ein Versuch auf OpenBSD 4.2 i386 zu wechseln scheiterte an verschiedensten Kernel Panics die völlig unmotiviert an unterschiedlichen Stellen beim start auftauchen. Wenn _OpenBSD 4.2 AMD64_ nicht so problemlos auf der selben Hardware laufen würde könnte man fast an einen RAM/CPU Defekt denken.

**Update:** Die Kernel Panics sind scheinbar durch die HDD ausgelöst worden denn nach einer Installation auf einer anderen Platte sind sie weg. Das Durchsatzproblem mit 180MBit ist aber weiterhin reproduzierbar allerdings nur in eine Richtung!? 

![](/images/2012/openbsd_panic.jpg)
