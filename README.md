# Chrome Fitting GNOME

啟動 Google Chrome 瀏覽器並根據 GNOME 主題切換其深色模式.

## 簡介

本項目通過分析 GNOME 當前主題的名稱, 判斷啓動 Google Chrome 時是否使用深色模式.

## 使用

在已安裝 `bash` 的設備上運行 [`chrome-fitting-gnome.sh`].

可在 GNOME 的 _[Google Chrome 快捷方式]_ 中, 將 `Exec=` 後的 `/usr/bin/google-chrome` 替換爲 _`chrome-fitting-gnome.sh` 的絕對路徑_,
再通過該快捷方式啓動 Google Chrome.

[`chrome-fitting-gnome.sh`]: chrome-fitting-gnome.sh

[GNOME 設置]: ~/.config/gtk-3.0/settings.ini

[Google Chrome 快捷方式]: /usr/share/applications/google-chrome.desktop
