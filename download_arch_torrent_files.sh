#!/bin/bash
#title           :download_arch_torrent_files.sh
#description     :This script will parse arch download page
#                 and add all torrents via magnet links.
#author		 :nadrimajstor
#date            :2013-11-19
#update          :2013-11-19
#version         :0.1
#==============================================================================

URL='https://www.archlinux.org/releng/releases/'
LINKS=$(curl $URL 2>&1 | grep -o -E 'href="([^"#]+)"' | cut -d'"' -f2)
MAGNETS=$(echo "${LINKS}" | grep 'magnet')

AUTH="--auth transmission:transmission"

for MAGNET in $MAGNETS; do
   transmission-remote $AUTH --add "$MAGNET"
done

