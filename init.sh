#!/bin/bash

if [ -n "$TFTPOPTIONS" ]; then
    sed -i "s/^TFTP_OPT.*$/TFTP_OPTIONS=\"$TFTPOPTIONS\"/" /etc/default/tftpd-hpa
fi

/etc/init.d/tftpd-hpa start

httpd-foreground

