---
date: "2007-11-20"
title: GBit Routing with BSD [Part2]
slug: gbit_routing_with_bsd_part_2
tags: [ "FreeBSD", "Hardware" ]
---

Nachdem ich inzwischen das OpenBSD Kernel-Panic-Syndrom aufklären konnte (böse alte Festplatte) habe ich auch ein paar Linux und NetBSD Durchläufe gemacht und die Tests um [iperf](http://dast.nlanr.net/Projects/Iperf/) erweitert. 
[Netperf](http://www.netperf.org/netperf/) ist zwar ein tolles Tool aber läuft scheinbar bei OpenBSD 4.2 AMD64 auf ein interessantes Problem auf. OpenBSD AMD64 bremst dabei jede TCP Verbindung auf ca 180MBit ein. Da _netperf_ nur genau einen TCP Socket aufbaut und dort so schnell wie möglich Daten draufpackt fällts das deutlich auf. In der Gegenrichtung ist hingegen alles okay … 710MBit!? Deshalb habe ich anschließend alle Tests mit _iperf_ und 3 TCP Sockets wiederholt um meine Vermutung zu untermauern. 
**Aus den Benchmarks habe ich interessante Dinge gelernt:**

* Routern bringt es (fast) garnichts wenn man AMD64 statt i386 einsetzt
* pf kostet bis zu ca 10% Performance
* FreeBSD 7.0 wird ein grandioses Release
* ich brauche ordentliche Netzwerkkarten für weitere Tests (sind schon bestellt)

## Hardware

<pre>
AMD Athlon64 3200+ 1GB DDR PC3200 Elitegroup ECS-nForce4-A939 

nfe0: NVIDIA nForce4 CK804 MCP9 Networking Adapter (onboard)
re0: Realtek RTL8110SB (PCI 32Bit, 33Mhz)
</pre>

## Benchmarks

<table>
<tr>
  <td>&nbsp;</td>
  <td colspan="2"><strong>netperf</strong></td>
  <td colspan="2"><strong>iperf</strong></td>
</tr>
<tr>
<td><strong>OS</strong></td>
<td><strong>nfe0 &gt; re0</strong></td>
<td><strong>re0 &gt; nfe0</strong></td>
<td><strong>nfe0 &gt; re0</strong></td>
<td><strong>re0 &gt; nfe0</strong></td>
</tr>
<tr>
<td>FreeBSD 7.0 BETA3 i386</td>
<td>783</td>
<td>-</td>
<td>643</td>
<td>-</td>
</tr>
<tr>
<td>FreeBSD 7.0 BETA2 AMD64</td>
<td>782</td>
<td>738</td>
<td>646</td>
<td>635</td>
</tr>
<tr>
<td>OpenBSD 4.2 i386</td>
<td>576</td>
<td>661</td>
<td>564</td>
<td>626</td>
</tr>
<tr>
<td>OpenBSD 4.2 AMD64</td>
<td>180</td>
<td>710</td>
<td>602</td>
<td>621</td>
</tr>
<tr>
<td>Linux 2.6.21.5 i686</td>
<td>687</td>
<td>730</td>
<td>605</td>
<td>628</td>
</tr>
<tr>
<td>Linux 2.6.23.8-cfs-v24 i686</td>
<td>661</td>
<td>740</td>
<td>591</td>
<td>633</td>
</tr>
<tr>
<td>FreeBSD 6.2 i386</td>
<td>657</td>
<td>-</td>
<td>651</td>
<td>-</td>
</tr>
<tr>
<td>NetBSD 4.0 RC3 i386</td>
<td>614</td>
<td>655</td>
<td>597</td>
<td>602</td>
</tr>
</table>

* [http://www.netperf.org/netperf/](http://www.netperf.org/netperf/) mit _-l 60 -t TCP\_STREAM_
* [http://dast.nlanr.net/Projects/Iperf/](http://dast.nlanr.net/Projects/Iperf/) mit _-t 60 -P 3_
