#!/bin/bash

myPath=$(pwd)
echo ""
echo ""
echo "******************************************************"
echo "*****************Hello********************************"
echo "******************************************************"
echo " "

echo -n "Enter your name and press Enter: "
read name

echo $name
echo " "
touch index.html
touch test.js


date > /dev/null
now="$(date +'%m-%d-%Y %r %A')"
echo $now

echo "<!DOCTYPE html>" >> index.html
echo "<html>" >> index.html
echo ' <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>' >>index.html
echo ' <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>' >>index.html
echo "  <body>">>index.html
echo '    <script src="test.js"></script>'>>index.html
echo "  <body>">>index.html
echo "<html>" >> index.html

echo '$(document).ready(function(){ '>>test.js
echo '  $("body").append("<div>'$now'</div>");'>>test.js
echo '});' >>test.js



a=0
while true
do
  date >/dev/null
  now="$(date +'%m-%d-%Y %r %A')"
  rm test.js
  touch test.js
  echo '$(document).ready(function(){ '>>test.js
  echo '  $("body").append("<div>'$now'</div>");'>>test.js
  echo '});' >>test.js
  open index.html 
  sleep 10
  kill $! > /dev/null
  a=$(($a+1))
  if [ "$a" -gt 5 ]
    then 
      break
  fi
done
exit 0
rm index.html
rm test.js




