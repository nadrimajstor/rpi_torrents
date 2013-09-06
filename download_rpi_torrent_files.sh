#!/bin/bash
#title           :download_rpi_torrent_files.sh
#description     :This script will crawl raspberry pi download section
#                 and download any new torrent file.
#author		 :nadrimajstor
#date            :2013-08-07
#update          :2013-09-06
#version         :0.2
#==============================================================================
URL='http://downloads.raspberrypi.org/'
TARGET_DIR='/home/majstor/rpi_torrents'
wget --recursive --timestamping --no-parent --accept 'torrent' --no-directories --wait 1 --random-wait -e robots=off -P$TARGET_DIR $URL
#Changelog v0.2
#removed images/ from URL ending
