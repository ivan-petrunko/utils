#!/bin/bash
rm -f /home/$USER/.cache/thumbnails/large/*.png > /dev/null 2>&1
rm -f /home/$USER/.cache/thumbnails/normal/*.png > /dev/null 2>&1
rm -f /home/$USER/.cache/mozilla/firefox/*.default/cache2/entries/* > /dev/null 2>&1
rm -f "/home/$USER/.cache/google-chrome/Default/Cache/"* > /dev/null 2>&1
rm -f "/home/$USER/.cache/google-chrome/Default/Media Cache/"* > /dev/null 2>&1
yarn cache clean --force > /dev/null 2>&1
npm cache clean --force > /dev/null 2>&1
docker rm $(docker ps -a -q) > /dev/null 2>&1
docker rmi $(docker images -q) > /dev/null 2>&1
echo "Cleanup done."

