#!/bin/bash

# Копируем plist в LaunchAgents
cp "$(dirname "$0")/../Resources/com.tgclean.plist" ~/Library/LaunchAgents/com.tgclean.plist
chmod 644 ~/Library/LaunchAgents/com.tgclean.plist
launchctl load ~/Library/LaunchAgents/com.tgclean.plist

# Уведомление
osascript -e 'display notification "TG Cleaner установлен! Кэш будет очищаться еженедельно." with title "TG Cleaner"'