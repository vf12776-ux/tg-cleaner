<img width="1113" height="1113" alt="qr-code (7)" src="https://github.com/user-attachments/assets/0dcfde73-7e63-4c3f-ae87-984e53e81161" />
# TG Cleaner

Программа для автоматической очистки кэша Telegram на macOS. Скачай, установи, запусти один раз — и кэш чистится раз в неделю сам. Никаких настроек!

## Установка (5 минут)

1. **Скачай**: Отсканируй QR-код или кликни [здесь](https://github.com/vf12776-ux/tg-cleaner/releases/download/v1.0/TG_Cleaner_v1.0.zip).
2. **Распакуй**: Двойной клик на `TG_Cleaner_v1.0.zip` → получишь `TG_Cleaner.app`.
3. **Установи**: Перетащи `TG_Cleaner.app` в `/Applications`.
4. **Запусти**: 
   - Двойной клик на `TG_Cleaner.app`. Если macOS выдаёт "Приложение нельзя открыть, так как не удалось проверить разработчика":
     - Щёлкни правой кнопкой на `TG_Cleaner.app` → "Открыть" → кликни "Открыть" в диалоге.
     - Или в терминале: `xattr -d com.apple.quarantine /Applications/TG_Cleaner.app` и `open /Applications/TG_Cleaner.app`.
   - Разреши доступ к папке `Library`, если macOS попросит.
5. **Готово!** Увидишь уведомление "TG Cleaner установлен!". Кэш чистится по понедельникам в 3:00.

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
