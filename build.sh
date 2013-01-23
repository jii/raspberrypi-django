#!/bin/bash

cd /tmp
rm -rf raspberry-django-deploy
mkdir raspberry-django-deploy
cd raspberry-django-deploy

echo "Copying Project to /tmp/raspberry-django-deploy ..."
cp -pvr /Users/chris/Projects/private/raspberrypi/projects/django .

echo "Cleaning Up..."
cd django
rm -rf env
rm -rf .git*
rm -rf app/static/twitter-bootstrap/.git*

rm -rf .idea
rm -rf .DS_Store
rm GPIODummy.py*
rm fabfile.*
rm build.sh

echo "Packing..."
cd ..
tar -czf pack.tar.gz django
