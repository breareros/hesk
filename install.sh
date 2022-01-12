#!/usr/bin/env bash

unzip hesk325ru.zip -d hesk
chmod 777 hesk/attachments
chmod 777 hesk/cache
chmod 666 hesk/hesk_settings.inc.php
docker-compose build 
