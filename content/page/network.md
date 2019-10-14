---
title: Network
description: "bluelife network"
---

The infrastructure for the network is designed for security and privacy and has evolved over the years. Some parts of it are in the cloud already and some are provided by external services but the aim is to have all important data and services locally available. All components and services have been chosen carefully.

## Architecture

![](/images/bluelife_network.png)


## DNS

* Registrar: [Gandi.net](https://www.gandi.net/)
* auth. DNS: [Google Cloud DNS](https://cloud.google.com/dns/) + DNSSEC
* DNS resolver: [Unbound](https://www.unbound.net/) + [Stubby](https://dnsprivacy.org/wiki/display/DP/DNS+Privacy+Daemon+-+Stubby)
* SSL Certs: [Let's Encrypt](https://letsencrypt.org/) via [acme.sh](https://acme.sh)


## Infrastructure

* IPv6: [Hurricane Electric](https://ipv6.he.net/)
* Hosting: [netcup](https://www.netcup.de/)
* Blog Hosting: [netlify](https://www.netlify.com)
* OS: [FreeBSD](https://www.freebsd.org/)
* VPN: [WireGuard](https://wireguard.com/)
* Virtualisation: [bhyve](http://bhyve.org/) via [vm-bhyve](https://github.com/churchers/vm-bhyve)
* Webserver: [nginx](https://nginx.org/)
* Backup: [ssbt](https://github.com/decke/ssbt/)
* NTP: [chrony](https://chrony.tuxfamily.org/)
* Firewall: [pf](https://www.freebsd.org/doc/handbook/firewalls-pf.html)
* SMTP: [smtprelay](https://github.com/decke/smtprelay)


## Hardware

* Router: [Supermicro X10SBA](http://www.supermicro.com/products/motherboard/celeron/x10/x10sba.cfm) running [FreeBSD](https://www.freebsd.org/)
* WiFi: [Ubiquiti Unifi AP AC](https://www.ubnt.com/unifi/unifi-ap-ac-lr/) running [OpenWRT](https://openwrt.org/)
* Switch: HPE 1920 Series


## Services

* Feed Reader: [miniflux](https://miniflux.app/)
* File sync: [syncthing](https://syncthing.net/)
* Contacts/Calendar: [radicale](https://radicale.org/)
* Web/Blog: [Hugo](https://gohugo.io/)
