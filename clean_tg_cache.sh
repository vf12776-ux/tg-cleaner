#!/bin/bash

# Папки кэша Telegram
CACHE_PATHS=(
    "$HOME/Library/Caches/Telegram"
    "$HOME/Library/Application Support/Telegram/Cache"
    "$HOME/Library/Application Support/Telegram Desktop"
    "$HOME/Library/Containers/org.telegram.desktop/Data/Library/Caches/Telegram"
    "$HOME/Library/Containers/org.telegram.desktop/Data/Library/Application Support/Telegram"
)

# Очистка
for path in "${CACHE_PATHS[@]}"; do
    if [ -d "$path" ]; then
        rm -rf "$path"/*
        echo "Очищен кэш в $path"
    fi
done

# Уведомление
osascript -e 'display notification "Кэш Telegram очищен" with title "TG Cleaner"'