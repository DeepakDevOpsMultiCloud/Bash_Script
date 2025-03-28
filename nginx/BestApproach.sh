#!/bin/bash

if systemctl is-active --quiet nginx; then
    echo "Nginx is RUNNING"
else
    systemctl restart nginx
fi
