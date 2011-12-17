---
layout: post
title: libchewing 0.3.2 版釋出
---
libchewing 0.3.2 版釋出，這是新的發展系列，可下載使用，並請提供 feedback 與 bug-report。

What's New in libchewing 0.3.2
---------------------------------------------------------
* Add gcc visibility support to hide private APIs.
* APIs and Headers refactoring.
* Doxygen-friendly API documentation.
* New binary data manipulation approach to dramatically reduce storage usage and loading time via memory mapping. (enabled by default)
* New word segmentation method based on mmseg.
* Improved auto-learn new phrases method.
* Improved test suite and added simple benchmark program.
* Option to indicate the behavior for phrase choice to be rearward or not.
* New APIs to enumerate supported keyboard types.
* Repair improper memory access.
* API united in Win32 and UNIX world.
* Initial Pythin binding support.
* Merged with libchewing-data project. (r342)
* Canonical debugging messages.
* Successful stories:
    * OpenBSD porting
    * ibus-chewing : chewing engine for ibus input method framework.
    * UIM-chewing leveraging libchewing 0.3.x development branch.
