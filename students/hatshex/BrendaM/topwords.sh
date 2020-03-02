#!bin\bash

curl -s --compressed $1 | tr -c '[:alnum:]' '[\n*]' | tr '[:upper:]' '[:lower:]' | sort | uniq -c | sort -n -r | head -n "$(($2+1))" | tail -n $2 
