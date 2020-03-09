#!/bin/sh

export HOME=/root
export APPDIR=/app

cd ${APPDIR}

if [ -f app.sh ]; then
  ./app.sh
else
  echo "Cannot find ${APPDIR}/app.sh"
  read -p "Press <enter> to continue"

#clear
if [ $? = 0 ]; then
  echo "Program completed successfully."
  echo "Exiting in 5 seconds."
  sleep 5s
  #very important to have an exit line, so the user isn't retured to a bash shell
  exit 0
else
  echo "Program completed with exit code $?"
  read -p "Press <enter> to exit"
  exit $?
fi
