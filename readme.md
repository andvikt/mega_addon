# MegaD updater
[![Donate](https://img.shields.io/badge/donate-Yandex-red.svg)](https://yoomoney.ru/to/410013955329136)

В этом репозитории содержатся аддоны для работы с [MegaD-2561, MegaD-328](https://www.ab-log.ru/smart-house/ethernet/megad-2561):
- [nginx-proxy](https://github.com/andvikt/mega_addon/blob/master/mega-proxy)
- [обновление прошивки MegaD](https://github.com/andvikt/mega_addon/blob/master/mega-updater)

[Интеграция с HA](https://github.com/andvikt/mega_hacs.git)
## Установка
addon - это исключительно фича hass.io, если у вас home-assistant установлен в виде hass.io, то
вам необходимо перейти в `supervisor`-`addon-store`, нажать три точки, нажать 
`repositories`, в поле `add repository` добавить `https://github.com/andvikt/mega_addon.git` и нажать `add`,
после чего в списке аддонов появится `megad-updater`, далее следуйте инструкции этого аддона.