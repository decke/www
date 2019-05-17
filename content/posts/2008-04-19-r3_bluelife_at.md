---
date: "2008-04-19"
title: r3.bluelife.at
slug: r3_bluelife_at
tags: [ "FreeBSD", "Hardware" ]
---

Ganz unerwartet standen heute zu Mittag 2 Pakete vor mir - voll mit bereits vor Wochen bestellter Hardware für meinen zukünftigen Router. Wie ihr mich kennt kaufe ich natürlich keine 25 Euro SoHo Router sondern echtes Männerspielzeug. 
Die Hardware habe ich basierend auf meinen Erfahrungen bei den [1GBit Routing Benchmarks](http://www.bluelife.at/2008/07/stromsparender-freebsd-1gbit-router.html) ausgesucht und mich ein wenig von meinem Arbeitskollegen beeinflussen lassen der sich mit [Stromspar PCs](http://www.meisterkuehler.de/forum/vorstellung-von-stromspar-pcs/) beschäftigt. 
Er hat selbst erst vor einigen Monaten einen Desktop PC mit einem [Idleverbrauch von 17W](http://www.meisterkuehler.de/forum/vorstellung-von-stromspar-pcs/16008-stromspar-rechner-mit-amd-x2-3800-ee-sff-sind-idlewerte-unter-17-watt-moeglich.html) zusammengebaut und arbeitet momentan auch an einem Tool für einfaches und stabiles Undervolting. Natürlich hab ich ihn schon dazu überredet es auch FreeBSD kompatibel zu gestalten und mich als Betatester angeboten. Mehr dazu in den nächsten Wochen mit einem Prototypen - aber nun zurück zum eigentlichen Thema. 
Einen stromsparenden Router zu bauen der 1GBit routen kann ist mit der richtigen Hardware kein großes Problem. Wichtig ist dabei die Größe des L1/L2 Cache der CPU und die Verwendung guter Netzwerkkarten. Dabei habe ich mich bewusst für die Sempron64 CPUs entschieden denn man kann beim Routing fast immer nur einen Kern vernünftig auslasten und der L1 und L2 Cache sind beim LE-1300 ebenfalls 64KB bzw 512KB also identisch zu den Athlon64 X2 Modellen. Bei den Netzwerkkarten war die Wahl einfach denn man kommt dabei unweigerlich zu Intel PRO/1000 PT Server Karten wo sich nur mehr die Frage stellt wie viele Ports man braucht. Als Netzteil kommt ein 110W Tischnetzteil samt PicoPSU zum Einsatz - nicht billig aber dem Stromverbrauch zuliebe. Standesgemäß verbaut man dann alles in ein 3HE 19" Gehäuse damit man alle PCI und PCIe Slots verwenden kann und fertig ist das Männerspielzeug.

## Pictures

![](/images/2008/r3.jpg)
![](/images/2008/r3_inside.jpg)
