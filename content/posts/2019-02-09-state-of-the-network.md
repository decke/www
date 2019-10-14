---
date: "2019-02-09"
title: State of the network 2019
slug: state_of_the_network_2019
tags: [ "FreeBSD", "Hardware", "Personal" ]
---

Auf der diesjährigen FOSDEM Keynote wurde ein wenig resignierend gesagt,
dass ein Leben ohne proprietäre Software nicht möglich ist. Das soll
jetzt aber nicht als Ausrede dienen, dass man es nicht trotzdem versucht. Mein
persönlicher OpenSource Weg hat 2006 begonnen und im Vergleich mit heute sieht
das erfreulich vertraut aus.

## Desktops / Laptops / Server

Bei mir läuft inzwischen alles mit FreeBSD vom Laptop bis zum Server und Xfce
wenn es eine GUI benötigt. Durch die Virtualisierung mit bhyve hält sich die
Hardware dabei in Grenzen. In der Firma ist es mit Slackware 14.2 und Xfce recht ähnlich.
Soweit klingt das ja gut aber natürlich kommen die alle nicht völlig ohne
proprietäres UEFI aus und proprietäre Intel Management Engine ist
auch fast überall mit dabei. Leider gibt es noch kaum vergleichbare komplett
offene Hardware ohne den preislichen Rahmen zu sprengen. Es sind aber Ansätze
erkennbar (RISC-V, POWER9, Chromebooks mit Coreboot), dass auch andere diesen Wunsch
haben.

## Netzwerk Equipment

WLAN Access Points laufen bei mir schon seit langem mit [OpenWrt](https://www.openwrt.org/)
und das auch ohne größere Probleme. Bei Switches sieht es allerdings
ganz anders aus. Aktuell sind es bei mir Modelle von HP und Zyxel aber alle mit
proprietärer Firmware. Es gibt da zwar auch erste Alternativen mit opensource
software aber das kommt eher aus der SDN Ecke und ist Enterprise lastig also für
SoHo ungeeignet und unleistbar. Bei ganz kleinen Netzen könnte man noch OpenWRT
auf [Ubiquiti EdgeRouter X](https://oldwiki.archive.openwrt.org/toh/ubiquiti/ubiquiti_edgerouter_x_er-x_ka)
verwenden aber da ist die Anzahl an Ports sehr begrenzt.

## Smartphones

Das Problemfeld hatte ich 2006 noch nicht. Da war ich schon mit Rockbox auf meinem
damaligen MP3 Player zufrieden. Heute ist es mit Android weit schwieriger ein wirklich
freies Gerät zu betreiben das einen nicht andauernd überwacht. Bisher
habe ich es zumindest soweit geschafft, dass [LineageOS](https://www.lineageos.org/)
auf meinem Nexus 5X läuft. Apps kommen vorwiegend von [F-Droid](https://www.f-droid.org/)
und für Konakte und Kalender betreibe ich meinen eigenen [Radicale](https://radicale.org)
Server. Alle Apps die ich verwende speichern ihre Daten lokal am Geröt und mit
[syncthing](https://syncthing.net/) wird das dann regelmäßig nach Hause gesichert.

Statt Chrome kommt natürlich wieder Fennec zum Einsatz und [Signal](https://signal.org/)
und [Riot.im](https://riot.im/) übernehmen die Kommunikation.

Leider ist noch Google Maps übrig bevor ich Google Play und den Play Store
loswerden kann. Das steht auf alle Fälle für 2019 schon am Plan.

Aber auch wenn Google Play weg ist gibt es in Android noch so viele Blobs, dass man
sich da nicht zu viel davon erwarten sollte. Aber es legt die Latte zumindest ein
wenig höher.

## Schwarze Flecken

Bei mir hängen natürlich auch noch proprietäre Geräte im
Netz wie ein Amazon Fire TV mit Alexa in der Fernbedienung. Alexa ist zwar taub dank
einiger Lagen Isolierband und das Gerät eingesperrt in einem eigenen VLAN aber
das macht es nicht weniger suspekt. Statt dem FireTV gibt es aber sehr viele gut
unterstützte ARM boards die das meiste davon wohl auch ähnlich komfortabel
hinkriegen sollten. Mit Kodi und den dazugehörigen Plugins sollte da für jeden
was dabei sein.

Meinen Samsung SmartTV habe ich zumindest soweit erobert, dass ich seine verschlüsselten
[Aufnahmen entschlüsseln](https://github.com/decke/drmdecrypt) kann und
ins Netzwerk darf er auch nicht.

Drucker haben wir sicher auch alle einen herumstehen aber da kenne ich nicht einmal
Ansätze von freien Alternativen. Schade eigentlich da die immer wieder mal durch
Sicherheitsprobleme auffallen und auch fleißig im Netzwerk auf sich aufmerksam machen.

## Fazit

Alles in allem hat sich in den letzten 13 Jahren schon einiges getan. Vorallem die Qualität
ist im OpenSource Bereicht bei vielen Projekten gefühlt deutlich besser geworden.
Gleichzeitig sind aber auch viele Gerätetypen hinzugekommen und die Funktionen in
den Geräten sind deutlich stärker in Richtung Cloud und Internet gewachsen. Bei
dieser Masse an Gadgets und Geräten muss man schon sehr genau auswählen wenn man
später eine Chance haben will diese mit OpenSource Software zu betreiben.

