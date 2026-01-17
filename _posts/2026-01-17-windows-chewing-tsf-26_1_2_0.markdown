---
title: windows-chewing-tsf 26.1.2.0 釋出
---
從這裡下載原始碼跟我們提供的安裝檔：

<https://github.com/chewing/windows-chewing-tsf/releases/tag/v26.1.2.0>

## 新酷音輸入法 26.1.2.0 版本更新摘要

### 🐛 修復問題

- **編輯器檔案匯入**：修正匯入檔案時出現 `unexpected argument '-k' found` 錯誤
- **Shift 鍵大小寫轉換**：輸入法僅考慮 Shift 鍵進行大小寫轉換判斷

此次更新解決編輯器匯入問題並修正大小寫轉換邏輯，確保僅由 Shift 鍵控制大小寫。

**完整修改紀錄**: https://github.com/chewing/windows-chewing-tsf/compare/v26.1.1.0...v26.1.2.0
