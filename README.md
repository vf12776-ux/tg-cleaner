# TG Cleaner

Программа для автоматической очистки кэша Telegram на macOS. Скачай, установи, запусти один раз — и кэш чистится раз в неделю сам. Никаких настроек!

## Установка (5 минут)

1. **Скачай**: Перейди по [ссылке на релиз](https://github.com/vf12776-ux/tg-cleaner/releases/latest). Скачай `TG_Cleaner.zip`.
2. **Распакуй**: Двойной клик на `TG_Cleaner.zip` — получишь `TG_Cleaner.app`.
3. **Установи**: Перетащи `TG_Cleaner.app` в `/Applications`.
4. **Запусти**: Двойной клик на `TG_Cleaner.app`:
   - Если macOS Ventura ругается ("неизвестный разработчик"): `Системные настройки → Конфиденциальность и безопасность → "Открыть"`.
   - Или в терминале: `xattr -d com.apple.quarantine /Applications/TG_Cleaner.app`.
   - Разреши доступ к папке `Library`, если macOS попросит.
5. **Готово!** Увидишь уведомление "TG Cleaner установлен!". Кэш чистится по понедельникам в 3:00 автоматически.

## Как работает

- Чистит кэш Telegram Desktop в папках:
  - `~/Library/Caches/Telegram`
  - `~/Library/Application Support/Telegram Desktop`
  - `~/Library/Containers/org.telegram.desktop/...` (для App Store-версии)
- Работает в фоне через `launchd` (задача `com.tgclean`).
- Показывает уведомления об очистке.

## Сборка из исходников (для разработчиков)

```bash
git clone https://github.com/vf12776-ux/tg-cleaner.git
cd tg-cleaner
chmod +x build_app.sh
./build_app.sh
mv TG_Cleaner.app /Applications
open /Applications/TG_Cleaner.app