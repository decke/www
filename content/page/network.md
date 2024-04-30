---
title: Network
description: "bluelife network"
---

The bluelife.at network is over 15 years old and it's current architecture is the result of many lessions learned. It is build with carefully chosen hardware to maintain a low power consumption. The architecture and all software components were designed and configured with security and privacy in mind.
Some parts of the network are in the cloud already and some are provided by external services but the aim is to have all important data and services locally available.


## Architecture

![](/images/bluelife_network.png)


### Infrastructure

* Hosting: [alwyzon](https://www.alwyzon.com)
* OS: [FreeBSD](https://www.freebsd.org), [OpenWRT](https://openwrt.org) and [Alpine Linux](https://alpinelinux.org)
* VPN: [WireGuard](https://wireguard.com)
* Virtualisation: [bhyve](http://bhyve.org) via [vm-bhyve](https://github.com/churchers/vm-bhyve)
* Container: [pot](https://github.com/pizzamig/pot)


### Infrastructure Tools

* Backup: [ssbt](https://codeberg.org/decke/ssbt)
* SMTP: [smtprelay](https://github.com/decke/smtprelay)
* DNS: [unbound](https://www.nlnetlabs.nl/projects/unbound/about/)
* NTP: [chrony](https://chrony.tuxfamily.org)
* SSO: [authelia](https://github.com/authelia/authelia)


### Hardware

* Router: [NanoPi R4S](https://wiki.friendlyarm.com/wiki/index.php/NanoPi_R4S) running [OpenWRT](https://openwrt.org)
* Router: [Ubiquiti EdgeRouter X](https://www.ui.com/edgemax/edgerouter-x/) running [OpenWRT](https://openwrt.org)
* WiFi: [Ubiquiti U6+](https://openwrt.org/toh/ubiquiti/unifi_6_plus) running [OpenWRT](https://openwrt.org)


## Services

* Feed Reader: [miniflux](https://miniflux.app)
* Contacts/Calendar: [radicale](https://radicale.org)
* Web/Blog: [Hugo](https://gohugo.io) and [Coder](https://github.com/luizdepra/hugo-coder)


### External Services

* Code: [codeberg](https://codeberg.org/decke), [GitHub](https://github.com/decke)
* CI/CD: [Woodpecker CI](https://woodpecker-ci.org), [GitHub Actions](https://github.com/features/actions)
* E-Mail: [Zoho Mail](https://www.zoho.com/mail/)
* Monitoring: [UptimeRobot](https://status.bluelife.at)
* Static Hosting: [netlify](https://www.netlify.com)

