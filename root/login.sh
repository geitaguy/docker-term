#!/bin/sh

export HOME=/root
export APPDIR=/app

cd ${APPDIR}

if [ -f ${APPDIR}/app.sh ]; then
  ./app.sh
  exitcode=$?
else
  echo "Cannot find ${APPDIR}/app.sh"
  read -p "Press <enter> to continue"
  exitcode=1
fi

#clear
if [ ${exitcode} = 0 ]; then
  echo "Program completed successfully."
  echo "Exiting in 5 seconds."
  sleep 5s
  #very important to have an exit line, so the user isn't retured to a bash shell
  exit 0
else
  echo "Program completed with exit code ${exitcode}"
  read -p "Press <enter> to exit"
  exit ${exitcode}
fi
