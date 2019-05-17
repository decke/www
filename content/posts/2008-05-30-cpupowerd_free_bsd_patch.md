---
date: "2008-05-30"
title: cpupowerd FreeBSD Patch
slug: cpupowerd_freebsd_patch
tags: [ "FreeBSD", "Programming" ]
---

Es hat zwar ein paar Tage länger gedauert als ursprünglich geplant aber jetzt ist mein FreeBSD Patch für [cpupowerd](http://sourceforge.net/projects/cpupowerd/) vollständig und stabil. So wie es aussieht wird er in die nächste größere Version 0.2.0 integriert werden. Ich hätte auch gerne OpenBSD/NetBSD oder DragonflyBSD unterstützt aber leider sind die BSDs in diesem Bereich alle so unterschiedlich und bieten derzeit keine Möglichkeit auf die CPU MSR Register zuzugreifen, dass es sehr viel Aufwand wäre dafür erst einmal die nötige Infrastruktur zu schaffen. Auf FreeBSD ist dank Stanislav Sedov sysutils/devcpu vorhanden das als Kernelmodul einen Zugriff auf die MSR Register ermöglicht. Wenn sich jemand darum kümmert das Kernelmodul auf die anderen BSDs zu portieren oder einen anderen Weg kennt um auf die MSR Register zuzugreifen dann mache ich gerne den Rest der dafür nötig ist.
