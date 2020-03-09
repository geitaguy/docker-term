#!/bin/sh

export HOME=/root
export APPDIR=/app

cd ${APPDIR}
./app.sh

#clear
echo "Program completed. Exiting in 5 seconds..."
sleep 5s
#very important to have an exit line, so the user isn't retured to a bash shell
exit 0