#!/bin/bash
`ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}' | head -n 1  > /tmp/a.o`
ipaddress=`cat /tmp/a.o`
echo ${ipaddress}
java -jar stubby4j520.jar -d ${1} -l ${ipaddress} -w
