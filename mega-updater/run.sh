#!/usr/bin/env bashio
CONF=$(bashio::config 'hosts')
localip=$(bashio::config 'localip')

for cfg in $CONF
do
  ip=$(bashio::jq "$cfg" '.ip')
  password=$(bashio::jq "$cfg" '.password')
  cmd="php megad-cfg-2561.php --ip $ip -p $password -w --ee --local-ip $localip --read-conf megad.cfg --write-conf megad.cfg"
  echo "$cmd"
  $cmd
done
