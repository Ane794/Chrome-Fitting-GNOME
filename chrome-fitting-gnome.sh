#!/usr/bin/env bash

# Google Chrome 程序名.
GOOGLE_CHROME=google-chrome

# 設置了 GNOME 主題的文件
CONFIG_FILE=$HOME/.config/gtk-3.0/settings.ini

# 獲取主題名稱 Settings.gtk-theme-name.
while read LINE; do
  if [[ $LINE =~ \[.*\] ]]; then
    SECTION=$(echo $LINE | sed "s/\[\(.*\)\]/\1/g")
  fi
  if [[ $SECTION != Settings ]]; then
    continue
  fi

  if [[ $LINE =~ gtk-theme-name=.* ]]; then
    GTK_THEME_NAME=$(echo $LINE | sed "s/gtk-theme-name=\(.*\)/\1/g")
    break
  fi
done <$CONFIG_FILE

# 根據主題名稱啓動 Google Chrome.
if [[ $GTK_COLOR_SCHEME =~ .*dark.* ]]; then # 若主題名稱包含 `dark`
  "$GOOGLE_CHROME" --force-dark-mode "$@"
else
  "$GOOGLE_CHROME" "$@"
fi
