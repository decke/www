---
date: "2008-07-31"
title: Stromsparender FreeBSD 1GBit Router
slug: stromsparender_freebsd_1_gbit_router
tags: [ "FreeBSD", "Hardware" ]
---

Vor 10 Monaten hab ich mit den ersten Vorbereitungen für diesen Router begonnen und in dieser Zeit viel über Effizienz, Stromsparen und Undervolting gelernt. Hier die kompakte Zusammenfassung für alle die ein ähnliches Vorhaben planen.  

## Anforderungen

Die Vorgaben sind für 2008 wohl relativ leicht nachvollziehbar. Ich brauch einen Router der wirklich 1GBit routen kann, mindestens 4x 1GBit Netzwerke bedient, möglichst wenig Strom verbraucht (weniger als 35W im Idle) und unter einem BSD läuft. Der Preis spielt natürlich auch eine Rolle aber bei den heutigen Hardwarepreisen war mir der Stromsparaspekt wichtiger. 

## Stromsparende Hardwareauswahl

Mit herkömmlicher x86 Hardware 1GBit zu routen ist wie ich bereits mit Benchmarks ermittelt habe kein großes Problem vorausgesetzt man verwendet ordentliche Netzwerkkarten. Nachdem ich mindestens 4 Netze haben will fällt die Wahl eindeutig auf eine Intel PRO/1000 PT Quad Server Karte denn Alternativen gibt es eigentlich keine.Wenn es um die Motherboardauswahl für ein stromsparendes System geht führt momentan nichts an einem nForce 630a Chipsatz vorbei. Bei den Netzteilen geht der Trend in letzter Zeit immer mehr in Richtung Effizienz und 80Plus was es in Zukunft einfacher machen sollte ein gutes Netzteil zu finden. Derzeit hat man noch nicht viele Möglichkeiten aber ich hatte noch eine PicoPSU übrig und ein relativ gutes 65W Morex Steckernetzteil also habe ich die verwendet. Wenn man aber ein effizientes Netzteil sucht dann gibt es bei [80Plus](http://www.80plus.org/) eine Liste aller 80Plus zertifizierten Netzteile. Außerdem helfen einem die User im [Meisterkühler.de Forum](http://www.meisterkuehler.de/forum/) gerne mit Rat und Tat weiter. 

##  Undervolting

Eine gute Hardwareauswahl ist enorm wichtig, denn wenn man einen High-End Chipsatz oder eine zusätzliche Grafikkarte verwendet dann verbraucht das schnell einige 10 bis 100W mehr als notwendig. Das selbe gilt für alle die noch einen Pentium 4 irgendwo herumliegen haben - lasst ihn liegen! Mit so einem System ist es sinnlos zu versuchen noch 5W durch Undervolting einzusparen wenn man durch einfachere Maßnahmen 100W sparen kann.Wenn man aber alles richtig gemacht hat und jetzt noch das letzte überflüssige Watt einsparen will dann kann man die Kernspannung der CPU reduzieren. Das ist prinzipiell gefährlich denn es kann zu Hardwareschäden führen aber die Gefahr ist bei richtiger Handhabung gering und führt maximal zu einem einfrieren des Systems.Das ist die Theorie denn für Linux und Windows gibt es zwar einige solcher Tools aber leider bis dahin kein einziges unter BSD. Zum Glück habe ich einen Arbeitskollegen der aus unzufriedenheit mit einem der Linux undervolting Tools selbst ein solches Projekt namens [cpupowerd](http://cpupowerd.sourceforge.net/) gestartet hat. Das war die perfekte Gelegenheit für mich diesem Tool FreeBSD Unterstützung beizubringen denn wie oft hat man schon die Gelegenheit so direkten Kontakt mit dem Author zu haben? Das Resultat war ein Patch für cpupowerd 0.1.2 der FreeBSD 6.x und 7.x support für AMD K8 CPUs hinzufügt.

## Ergebnis

Es war einiges an Arbeit die für mich perfekte Lösung zu finden und dann auch umzusetzen aber das Resultat überzeugt. 31W im Idle und ca 50W unter Volllast für einen 5x 1GBit Router bekommt man auch mit Mobile Hardware kaum hin. Die 2 Wochen Arbeit um dem cpupowerd FreeBSD Support beizubringen haben sich auch gelohnt denn das Undervolting spart im Idle ca 5W und unter Volllast 9W.  

## Pictures

![](/images/2008/r3.jpg) ![](/images/2008/r3_inside.jpg)
