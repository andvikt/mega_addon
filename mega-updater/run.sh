#!/usr/bin/env bashio
set -e

MEGAD_SCRIPT_URL=http://ab-log.ru/files/File/megad-cfg/megad-cfg-2561.zip
echo "download latest update script from $MEGAD_SCRIPT_URL"
curl -L -f -s "$MEGAD_SCRIPT_URL" > megad.zip
unzip megad.zip
rm megad.zip

CONF=$(bashio::config 'hosts')
localip=$(bashio::config 'localip')
options=$(bashio::config 'options') || true

if [[ -z "$options" || "$options" = "null"]]
then
  options="-w --ee --read-conf /backup/megad-$ip.cfg --write-conf /backup/megad-$ip.cfg"
fi

for cfg in $CONF
do
  ip=$(bashio::jq "$cfg" '.ip')
  password=$(bashio::jq "$cfg" '.password')
  cmd="php megad-cfg-2561.php --ip $ip -p $password --local-ip $localip $options"
  echo "$cmd"
  $cmd
done
