#!/bin/bash
rm -f /home/$USER/.cache/thumbnails/large/*.png > /dev/null 2>&1
rm -f /home/$USER/.cache/thumbnails/normal/*.png > /dev/null 2>&1
rm -f /home/$USER/.cache/mozilla/firefox/*.default/cache2/entries/* > /dev/null 2>&1
rm -f "/home/$USER/.cache/chromium/Default/Cache/"* > /dev/null 2>&1
rm -f "/home/$USER/.cache/google-chrome/Default/Cache/"* > /dev/null 2>&1
rm -f "/home/$USER/.cache/google-chrome/Default/Code Cache/js/"* > /dev/null 2>&1
rm -f "/home/$USER/.cache/google-chrome/Default/Media Cache/"* > /dev/null 2>&1
rm -rf "/home/$USER/.config/chromium/Default/Service Worker/CacheStorage/"* > /dev/null 2>&1
rm -f "/home/$USER/.config/chromium/Default/Service Worker/ScriptCache/"* > /dev/null 2>&1
rm -rf "/home/$USER/.config/google-chrome/Default/Service Worker/CacheStorage/"* > /dev/null 2>&1
rm -f "/home/$USER/.config/google-chrome/Default/Service Worker/ScriptCache/"* > /dev/null 2>&1
rm -f "/home/$USER/.config/libreoffice/4/user/backup/"* > /dev/null 2>&1
rm -f "/home/$USER/.local/share/Trash/files/"* > /dev/null 2>&1
rm -f /home/$USER/.thumbnails/normal/*.png > /dev/null 2>&1
composer clear-cache -q > /dev/null 2>&1
yarn cache clean --force > /dev/null 2>&1
npm cache clean --force > /dev/null 2>&1
docker rm $(docker ps -a -q) > /dev/null 2>&1
docker rmi $(docker images -q) > /dev/null 2>&1
echo "Cleanup done."

