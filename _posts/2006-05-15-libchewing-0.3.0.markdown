---
layout: post
title: libchewing 0.3.0 版釋出
---
libchewing 0.3.0 版釋出，這是新的發展系列，可下載使用，並請提供 feedback 與 bug-report。

What's New in libchewing 0.3.0
----------------------------------------------------------
* This is a new development branch differing a lot from 0.2.x series, and breaks API/ABI for new features.
* UTF-8 based language engine core for common Unicode environment.
* Porting layer for POSIX/Unix-like and Win32 to reduce the redundant porting process.
* New API design for better consistency.
* Merge the efforts from libchewing-data subproject, which means various phrases have been reviewed and corrected.
* Zuin fixes and symbol improvements.
* Support key 'j' / 'k' for paging in selection mode.
* Fix some internal memory management bugs and leaks.
* Improved internal test suite.
* New binary-form of user hash data to speed up loading and solve hash data corruption.
* Better calculating of internal tree and phone constants.
* Revised tsi.src for richer phrases and avoiding crashes.
* Merge phone and phrase from CNS11643.
* Reduce the amount for the expose for internal symbols.
* Improved Han-Yu PinYin to use table-lookup implementation.
* Experimental frequency-evaluation. (re-compute chewing lifetime)
* Implement the choice mechanism for pair symbols.
* Improved Tab handling to allow the switching over different frequency orders of candidated phrases.
* New auxiliary module for simpler API uses.
* Experimental memory-mapping based binary data handling to speed up data loading.
* Successful stories:
    - Sun Solaris 10 U2 and 11 will provide built-in Chewing IM support.
    - OXIM input method suite from OpenDesktop/OSSI provides Chewing support as its default input method.
