#!/bin/bash

#find directories and run script file or inline script in it
for fd in $(find /path -name "dir-name" -execdir realpath "{}" \+;)
do echo $fd
#/path-to-script.sh
chmod -R u+rw $fd
chmod -R g+rw $fd
chmod -R o+r $fd
chown -R 33:app $fd
find $fd -type d -exec chmod a+x {} \+;
done
