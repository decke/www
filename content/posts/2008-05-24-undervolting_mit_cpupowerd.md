---
date: "2008-05-24"
title: Undervolting mit cpupowerd
slug: undervolting_mit_cpupowerd
tags: [ "FreeBSD" ]
---

Es gibt Grund zur Freude denn seit gestern gibt es das erste Release von [cpupowerd 0.1.0](http://sourceforge.net/projects/cpupowerd/). Wofür das Teil gut ist? Einfach erklärt spart es Strom unter Linux und bald auch FreeBSD. 
Die Details sind etwas komplexer denn das was die Betriebssystemkernel heute bereits machen und vielen unter [Cool'n'Quiet](http://de.wikipedia.org/wiki/Cool%27n%27Quiet), PowerNow! oder SpeedStep bekannt ist spart bereits viel Strom aber man kann eben noch etwas mehr rausholen. Standardmäßig halten sich alle an die Spezifikation und die ist natürlich für die schlimmsten Fälle gedacht. Damit man genau diese Reserven nutzen kann gibt es [cpupowerd](http://sourceforge.net/projects/cpupowerd/) der einem beim Undervolten und somit stromsparen hilft. 
Momentan werden nur AMD K8 CPUs und Linux unterstützt aber Intel Unterstützung und eine breitere Betriebssystem Unterstützung sind bereits in Arbeit. 
So habe ich an den vergangenen 2 Tagen an FreeBSD support für cpupowerd gearbeitet und kann bereits den ersten funktionsfähigen Patch vorweisen. Natürlich muss er noch ausführlicher getestet werden und eine kurze Anleitung fehlt auch noch aber ich bin zuversichtlich, dass er in die nächste Version 0.2.0 integriert wird.

**Update 25. Mai:**
Eine Anleitung wie man cpupowerd verwenden muss findet man im dazugehörigen Thread [http://www.meisterkuehler.de/forum/linux-unix/20124-cpupowerd-ein-tool-fuers-cpu-undervolten-unter-linux.html](http://www.meisterkuehler.de/forum/linux-unix/20124-cpupowerd-ein-tool-fuers-cpu-undervolten-unter-linux.html)
