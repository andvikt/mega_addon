# Обновление MegaD
[![Donate](https://img.shields.io/badge/donate-Yandex-red.svg)](https://yoomoney.ru/to/410013955329136)

[Интеграция с HA](https://github.com/andvikt/mega_hacs.git)
## Установка

Вам нужно установить репозиторий согласно [инструкции](https://github.com/andvikt/mega_addon)

## Описание

Аддон помогает обновить прошивку megad непосредственно из интерфейса HomeAssistant без необходимости самостоятельно 
устанавливать php-окружение.

Прошивка обновляется до последней доступной версии. Скрипт обновления загружается последней версии при каждом обновлении.

**Важно!** аддон - это всего лишь [официальный скрипт обновления](https://www.ab-log.ru/smart-house/ethernet/megad-upgrade),
упакованный в docker-контейнер с php 7.4 и удобной конфигурацией.

Конфиг, прочитанный в процессе обновления сохраняется по адресу `backup/megad-$ip.cfg`, чтобы можно было
в ручном режиме восстановиться, если что-то пошло не так

Ошибки, связанные с работой php-скрипта, просьба обсуждать на форуме в 
[соответсвующей ветке](https://www.ab-log.ru/forum/viewtopic.php?f=1&t=1195), автор аддона к разработке php-скрипта никакого
отношения не имеет.

## Настройка
Для успешного обновления необходимо правильно заполнить все поля конфигурации и запустить start:
```yaml
localip: 192.168.0.37  # ip адрес вашего home-assistant
hosts:
  - ip: 192.168.0.14  # ip адрес megad
    password: sec
  # их можно указать несколько:
  - ip: 192.168.0.15
    password: sec
    
    # если указать options, то они будут добавлены к команде
    # если не указывать, то опции по-умолчанию выглядят так: -w --ee --read-conf /backup/megad-$ip.cfg --write-conf /backup/megad-$ip.cfg
    # при этом часть опций определена всегда: --ip $ip -p $password --local-ip $localip
    options: -f -e -ee
```

Если вам понравился аддон, не забудьте поставить звезду на гитхабе - вам не сложно, а мне приятно
