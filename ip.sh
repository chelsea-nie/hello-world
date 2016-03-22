#!/bin/sh -ex
for ip in `seq 1 5`
  do
    {
     ping -c 192.168.1.$ip > /dev/null 2>&1
     if [ $? -eq 0 ]; then
          echo 192.168.1.$ip up
     else
          echo 192.168.1.$ip down
     fi
    }
done
wait
