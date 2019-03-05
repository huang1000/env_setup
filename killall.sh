#! /bin/sh
# kill all processes containing the commandline argument

#set -u
PID=$(ps -ef | grep $1 | grep -v grep | awk '{print $2}')
#for pid in $PID
if [[ "" != "$PID" ]]; then
    echo "killing $PID"
    #kill -9 $PID
fi

echo "killing " $PID
#ps -ef | awk '/fraud/ {print $2}' | xargs echo
