#!/bin/bash

echo "TESTING GET file"
for file in $(find nameserver/file.server.one -type f | cut -d'/' -f 3,4)
do
    ./fileget -n 127.0.0.2:42069 -f fsp://file.server.one/"$file" 2>>log
    diff "$file" nameserver/file.server.one/"$file" && echo "$file identical" || echo "$file NOT identical"
    rm "$file"
done

echo ""
echo "TESTING GETALL"
./fileget -n 127.0.0.2:42069 -f fsp://file.server.one/* >> log

for file in $(find nameserver/file.server.one -type f | cut -d'/' -f 3,4)
do
    diff "$file" nameserver/file.server.one/"$file" && echo "$file identical" || echo "$file NOT identical"
    rm "$file"
done

rm -r folder