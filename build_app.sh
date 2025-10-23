#!/bin/bash

APP_NAME="TG_Cleaner"
SCRIPT_DIR="$(pwd)"

# Создаём структуру .app
mkdir -p "$APP_NAME.app/Contents/MacOS"
mkdir -p "$APP_NAME.app/Contents/Resources"

# Копируем скрипты
cp clean_tg_cache.sh "$APP_NAME.app/Contents/Resources/clean_tg_cache.sh"
cp setup.sh "$APP_NAME.app/Contents/MacOS/$APP_NAME"
cp com.tgclean.plist "$APP_NAME.app/Contents/Resources/com.tgclean.plist"
chmod +x "$APP_NAME.app/Contents/MacOS/$APP_NAME"
chmod +x "$APP_NAME.app/Contents/Resources/clean_tg_cache.sh"

# Info.plist
cat > "$APP_NAME.app/Contents/Info.plist" << EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>CFBundleExecutable</key>
    <string>$APP_NAME</string>
    <key>CFBundleIdentifier</key>
    <string>com.tgcleaner.app</string>
    <key>CFBundleName</key>
    <string>TG Cleaner</string>
    <key>CFBundleVersion</key>
    <string>1.0</string>
    <key>LSUIElement</key>
    <true/>
</dict>
</plist>
EOF

echo "Готово! $APP_NAME.app создан в $SCRIPT_DIR"
open "$SCRIPT_DIR"