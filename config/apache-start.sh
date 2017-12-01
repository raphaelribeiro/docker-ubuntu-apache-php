#!/bin/bash
# Remove arquivo pid
rm -f /var/run/apache2/apache2.pid
# Start Apache
/usr/sbin/apache2ctl -D FOREGROUND
