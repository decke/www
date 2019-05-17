---
date: "2009-09-25"
title: Kernel 2.6.31 broke my PHP script
slug: kernel_2_6_31_broke_my_php_script
tags: [ "Programming" ]
---

Strange things happened when _is_dir()_ suddenly returned false. The directory is there, was always there and _file_exists()_ confirms that. Last thing i've changed on that box was the Kernel update on my Slackware box to 2.6.31 so restarting with 2.6.27 and problem is gone. Very strange. 
Okay digging a bit deeper, that directory is mounted via cifs (samba share) and when looking at _stat_ output or _ls -lai_ the Inode number is huge. Really huge. That was caused by a [patch](http://patchwork.kernel.org/patch/26614/) that enables cifs _serverino_ option per default but breaks all applications that are not compiled with large file support. 
The workaround for this is to pass the option "noserverino" to _mount.cifs_.
