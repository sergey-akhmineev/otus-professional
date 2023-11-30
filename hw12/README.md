# MemcLoad v2

### Версия MemcLoad на go.
#### Установка зависимостей
  - $ go install github.com/golang/protobuf/proto@latest
  - $ go install github.com/rainycape/memcache@latest

#### Аргументы командной строки:

Аргумент|Описание
---|---
--pattern                       |шаблон загружаемого файла
--test                          |тестовый режим
--dry                           |режим с выводом в лог без записи в мемкеш
--idfa, --gaid, --adid, --dvid  |адреса мемкеш для соответствующих типов устройств
--threshold                     |пороговое значение ошибок
--timeout                       |таймаут на запись/чтение (мс)
--attempts                      |количество попыток записи в мемкеш (0 - бесконечно)
--help                          |справка