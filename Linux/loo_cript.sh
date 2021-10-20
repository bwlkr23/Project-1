#!/bin/bash

# loop for the users at home folder
paths=('/etc/shadow' '/etc/passwd')

for path in ${paths[@]};
do
  ls -l $path
done

