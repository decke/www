---
date: "2009-06-04"
title: FreeBSD 7.2 mit Huawei E220 in Österreich (drei)
slug: freebsd_7_2_mit_huawei_e220_in_osterreich_drei
tags: [ "FreeBSD" ]
---

Nachdem ich bei eBay ein Huawei E220 für grob 35.- Euro erstanden und mir jetzt noch eine Daten Simkarte von [drei](http://www.drei.at/) besorgt habe folgt der interessante Teil.Diese Anleitung verwendet den [u3g](http://people.freebsd.org/%7En_hibma/u3g.html) Treiber von FreeBSD 7.2 mit einem Huawei E220 im Österreichischen Netz von [3](http://www.drei.at/).  

## u3g Treiber laden

Wie gewohnt mit _kldload u3g_ laden und damit er nach dem nächsten Neustart gleich geladen wird in _/boot/loader.conf_ eintragen. 

`echo u3g_load="YES" >> /boot/loader.conf`

## ppp.conf

Selbst zusammengesucht und durch trial and error so lange ausgebessert bis es das tut was ich will.

**/etc/ppp/ppp.conf:**

`drei:
  set device /dev/cuaU0.0
  set speed 460800
  set timeout 0
  set authname drei.at
  set authkey drei.at 
  set dial "ABORT BUSY TIMEOUT 8 \
  \"\" \
  AT OK-AT-OK \
  AT+CFUN=1 OK-AT-OK \
  AT+CMEE=2 OK-AT-OK \
  AT+CSQ OK \
  AT+CGDCONT=1,\"IP\",\"drei.at\" OK \
  AT+CGCLASS? OK \
  AT+COPS? OK \
  ATD*99# CONNECT"
  set crtscts on
  set reconnect 3 90
  set vj slotcomp off
  set lqrperiod 600
  disable shortseq
  disable vjcomp
  disable acfcomp
  disable deflate
  disable deflate24
  disable pred1
  disable protocomp
  disable mppe
  disable ipv6cp
  enable lqr
  enable dns
  resolv writable
  set ifaddr 10.0.0.1/0 10.0.0.2/0 255.255.255.255
  add default HISADDR
`

## Connecting

Jedes mal wenn man das UMTS Modem ansteckt muss man erstmal die PIN eingeben. Das kann leider nicht in die ppp.conf weil es sonst bei jedem reconnect einen Fehler auslösen würde deshalb machen wir das auf der Kommandozeile. 

`echo AT+CPIN=1234 > /dev/cuaU0.0` 

Nun kann man wie gewohnt verbinden. 

`ppp drei > dial` 

Sollte die Verbindung abgebaut werden oder abbrechen kann man durch ein erneutes _dial_ wieder neu verbinden.Sollte irgendwas nicht auf Anhieb funktionieren kann man auch selbst mit dem Modem reden - in AT Kommandos versteht sich. ("AT", "ATI", "AT&V", ...) 
`cu -s 460800 -l /dev/cuaU0.0`

## Autoconnect mit devd

Man kann auch devd nutzen damit er beim anstecken dieses Modems automatisch die PIN eingibt und eine Verbindung aufbaut. 
**/etc/devd.conf** 

`attach 100 {
  device-name "ucom[0-9]+";
  match "vendor" "0x12d1";
  match "product" "0x1003";
  action "sleep 5 && echo AT+CPIN=1234 > /dev/cuaU0.0 && ppp -ddial drei";
};`
