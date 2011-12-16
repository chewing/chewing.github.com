---
layout: post
title: libchewing 0.3.1 版釋出
---
libchewing 0.3.1 版釋出，這是新的發展系列，可下載使用，並請提供 feedback 與 bug-report。

What's New in libchewing 0.3.1
----------------------------------------------------------
* New keyboard layout DACHEN\_CP26.
* Add key '`' to open symbol table.
* Erase candidate and reset its length when 'Esc' key is handled.
* Closes candidate window when user pressed 'Up' key.
* Doing select at the end of edit buffer works on the
  last phrase (interval).
* Improved reminding message text.
* Sync with libchewingdata project.
* A new HanYu-PinYin mapping table
* More robust behavior when IM crashes.
* Allow '#' comment and blank line in tsi.src.
* Fix chewing switch between Full/Half mode and cursor moves one space in
  gedit.
* Fix when list available phrases to choice, user's own phrases are
  not included.
* Release PgUp/PgDn key event to running applications.
* Fix portability issues on FreeBSD.
* Fix incorrect initialization.
* Fix pinyin key order, put "shun" before "shuo".
* Fix various potenital boffer overflow bugs.
* Fix various memory leaks.
* chewing_set_PinYinMethod to support multiple PinYin methods.
* chewing_handle_CtrlOption was removed.
* New structure SymbolEntry.
* Rename selectAreaLen to candPerPage.
* Added bEasySymbolInput.

