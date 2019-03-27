#!/bin/bash

KEY=""
SECRET=""
DIR=""

# kill process
echo "kill process: " 
ps aux | grep "process" grep -v grep | awk '{ print "kill -9", $2 }' | sh

# git reset and pull
echo "change dir"
cd ${DIR}
echo "git reset"
git reset --hard
echo "git pull"
git pull --rebase

# go run
echo "go run"
go run main.go --key ${KEY} --secret ${SECRET} &
