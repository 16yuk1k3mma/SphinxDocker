#!/bin/sh

INSTALL_MODE="I"

expect -c "
set timeout -1
spawn env LANG=C $(ls /tmp/install-tl*/install-tl)
expect \"Enter command:\"
send \"${INSTALL_MODE}\n\"
expect eof
"
