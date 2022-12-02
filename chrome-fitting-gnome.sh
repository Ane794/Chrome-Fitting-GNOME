#!/usr/bin/env bash

# Google Chrome 程序名.
GOOGLE_CHROME=google-chrome

# 獲取顏色主題名稱.
GTK_COLOR_SCHEME=$(gsettings get org.gnome.desktop.interface color-scheme)

# 根據主題名稱啓動 Google Chrome.
if [[ $GTK_COLOR_SCHEME =~ .*dark.* ]]; then # 若主題名稱包含 `dark`
  "$GOOGLE_CHROME" --force-dark-mode --enable-features=WebUIDarkMode "$@"
else
  "$GOOGLE_CHROME" "$@"
fi
