---
date: "2007-11-26"
title: GBit Routing with BSD [Part3]
slug: gbit_routing_with_bsd_part_3
tags: [ "FreeBSD", "Hardware" ]
---

So nun alles zurück zum Anfang und diesmal mit richtiger Hardware. Bei diesen Tests ist der Ablauf identisch aber diesmal werden beim Routing 2 Intel PRO/1000 PT Server Netzwerkkarten am PCI Express Bus verwendet. Die Auswirkungen auf den Durchsatz sind ordentlich aber viel erfreulicher ist die bei weitem geringere CPU Last. 

**Aus den Benchmarks habe ich wieder einiges gelernt:**

* billige NICs: 750MBit und 100% CPU Last; ordentliche NICs: 940MBit und 60% CPU Last
* Intel PRO/1000 PT Server NICs brauchen um ca die Hälfte weniger CPU als die billigeren PT Desktop NICs
* OpenBSD bevorzugt gute Hardware und läuft dann auch hervorragend

## Hardware

<pre>
AMD Athlon64 3200+ 1GB DDR PC3200 Elitegroup ECS-nForce4-A939
em0: Intel(R) PRO/1000 PT Server Adapter (PCI-Express)
em1: Intel(R) PRO/1000 PT Server Adapter (PCI-Express)
</pre>

<table>
<tr>
  <td>&nbsp;</td>
  <td colspan="4"><strong>netperf (MBit/sec)</strong></td>
  <td colspan="4"><strong>iperf (MBit/sec)</strong></td>
  <td colspan="2"><strong>CPU usage</strong></td>
</tr>
<tr>
  <td>&nbsp;</td>
  <td colspan="2"><strong>em0 &gt; em1</strong></td>
  <td colspan="2"><strong>em1 &gt; em0</strong></td>
  <td colspan="2"><strong>em0 &gt; em1</strong></td>
  <td colspan="2"><strong>em1 &gt; em0</strong></td>
  <td colspan="2">&nbsp;</td>
</tr>
<tr>
  <td><strong>OS</strong></td>
  <td><strong>forw.</strong></td>
  <td><strong>pf</strong></td>
  <td><strong>forw.</strong></td>
  <td><strong>pf</strong></td>
  <td><strong>forw.</strong></td>
  <td><strong>pf</strong></td>
  <td><strong>forw.</strong></td>
  <td><strong>pf</strong></td>
  <td><strong>forw.</strong></td>
  <td><strong>pf</strong></td>
</tr>
<tr>
  <td><strong>FreeBSD 7.0 BETA2 AMD64</strong></td>
  <td>941</td>
  <td>940</td>
  <td>927</td>
  <td>933</td>
  <td>946</td>
  <td>946</td>
  <td>937</td>
  <td>941</td>
  <td>30%</td>
  <td>60%</td>
</tr>
<tr>
  <td><strong>Linux 2.6.21.5 i686</strong></td>
  <td>758</td>
  <td>-</td>
  <td>734</td>
  <td>-</td>
  <td>946</td>
  <td>-</td>
  <td>936</td>
  <td>-</td>
  <td>?</td>
  <td>?</td>
</tr>
<tr>
  <td><strong>NetBSD 4.0 RC3 i386</strong></td>
  <td>602</td>
  <td>574</td>
  <td>597</td>
  <td>573</td>
  <td>903</td>
  <td>792</td>
  <td>888</td>
  <td>763</td>
  <td>100%</td>
  <td>100%</td>
</tr>
<tr>
  <td><strong>OpenBSD 4.2 i386</strong></td>
  <td>927</td>
  <td>924</td>
  <td>903</td>
  <td>898</td>
  <td>946</td>
  <td>946</td>
  <td>936</td>
  <td>936</td>
  <td>40%</td>
  <td>55%</td>
</tr>
<tr>
  <td><strong>OpenBSD 4.2 AMD64</strong></td>
  <td>928</td>
  <td>924</td>
  <td>903</td>
  <td>891</td>
  <td>946</td>
  <td>946</td>
  <td>937</td>
  <td>936</td>
  <td>40%</td>
  <td>55%</td>
</tr>
</table>



* [http://www.netperf.org/netperf/](http://www.netperf.org/netperf/) mit _-l 60 -t TCP\_STREAM_
* [http://dast.nlanr.net/Projects/Iperf/](http://dast.nlanr.net/Projects/Iperf/) mit _-t 60 -P 3_
