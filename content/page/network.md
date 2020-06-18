---
title: Network
description: "bluelife network"
---

The bluelife.at network is over 15 years old and it's current architecture is the result of many lessions learned. It is build with carefully chosen SoHo equipment to be able to run [FreeBSD](https://www.freebsd.org/) and [OpenWRT](https://openwrt.org/) on it and maintain a low power consumption. The architecture and all software components were designed and configured with security and privacy in mind.
Some parts of the network are in the cloud already and some are provided by external services but the aim is to have all important data and services locally available.

## Architecture

![](/images/bluelife_network.png)


### Infrastructure

* IPv6: [Hurricane Electric](https://ipv6.he.net/)
* Hosting: [netcup](https://www.netcup.de/)
* OS: [FreeBSD](https://www.freebsd.org/), [OpenWRT](https://openwrt.org/) and [Alpine Linux](https://alpinelinux.org/)
* VPN: [WireGuard](https://wireguard.com/)
* Virtualisation: [bhyve](http://bhyve.org/) via [vm-bhyve](https://github.com/churchers/vm-bhyve)
* Container: [pot](https://github.com/pizzamig/pot)


### Infrastructure Tools

* Firewall: [pf](https://www.freebsd.org/doc/handbook/firewalls-pf.html)
* Backup: [ssbt](https://github.com/decke/ssbt/)
* SMTP: [smtprelay](https://github.com/decke/smtprelay)
* NTP: [chrony](https://chrony.tuxfamily.org/)


### Hardware

* Router: [Supermicro X10SBA](http://www.supermicro.com/products/motherboard/celeron/x10/x10sba.cfm) running [FreeBSD](https://www.freebsd.org/)
* SoHo Router: [Ubiquiti EdgeRouter-X](https://www.ui.com/edgemax/edgerouter-x/) running [OpenWRT](https://openwrt.org)
* WiFi: [Ubiquiti Unifi AP AC](https://www.ubnt.com/unifi/unifi-ap-ac-lr/) running [OpenWRT](https://openwrt.org/)
* Switch: HPE 1920 Series


## Services

* Feed Reader: [miniflux](https://miniflux.app/)
* File sync: [syncthing](https://syncthing.net/)
* Contacts/Calendar: [radicale](https://radicale.org/)
* Web/Blog: [Hugo](https://gohugo.io/) and [Coder](https://github.com/luizdepra/hugo-coder/)


### External Services

* Monitoring: [UptimeRobot](https://uptimerobot.com)
* Static Hosting: [netlify](https://www.netlify.com)
* Code: [GitHub](https://github.com/decke)
* CI/CD: [GitHub Actions](https://github.com/features/actions)
* E-Mail: [Google Mail](https://google.com/gmail/)
