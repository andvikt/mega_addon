# MegaD addons
[![Donate](https://img.shields.io/badge/donate-Yandex-red.svg)](https://yoomoney.ru/to/410013955329136)

В этом репозитории содержатся аддоны для работы с [MegaD-2561, MegaD-328](https://www.ab-log.ru/smart-house/ethernet/megad-2561):
- [nginx-proxy](https://github.com/andvikt/mega_addon/blob/master/mega-proxy)
- [обновление прошивки MegaD](https://github.com/andvikt/mega_addon/blob/master/mega-updater)

[Интеграция с HA](https://github.com/andvikt/mega_hacs.git)
## Установка
Аддоны устанавливаются только если у вас есть supervisor

Сначала вам необходимо добавить мой репозиторий, самый простой способ сделать это:

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fandvikt%2Fmega_addon.git)

После чего в списке аддонов появится `megad-updater`, `megad-proxy`, далее следуйте инструкции этого аддона.
