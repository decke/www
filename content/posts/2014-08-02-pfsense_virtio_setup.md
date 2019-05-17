---
date: "2014-08-02"
title: pfSense virtio setup
slug: pfsense_virtio_setup
---

If you are interested in running pfSense in a virtual environment then you might run into a situation where you only have virtio network adapters in a system.

The standard recommendation is to add a temporary supported network device to it. That can be very hard in some situations but there is a much easier way to do that.

**- Boot up pfSense**

**- Choose 7 "Escape to loader prompt"**

<pre>
load virtio 
load virtio_pci 
load virtio_blk 
load if_vtnet 
boot
</pre>

**- When it boots choose "vtnet0" as your WAN device** 

**- Install to harddisk by typing "99"**

**- Modify loader.conf to make it permanent**

<pre>
mount /dev/vtbd0s1a /mnt 
echo virtio_load="YES" >> /mnt/boot/loader.conf
echo virtio_pci_load="YES" >> /mnt/boot/loader.conf
echo virtio_blk_load="YES" >> /mnt/boot/loader.conf
echo if_vtnet_load="YES" >> /mnt/boot/loader.conf
umount /mnt
</pre>
