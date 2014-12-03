#!/bin/bash

BASE_PATH="$(dirname "$0")"

if [ $# != 1 ]; then 
   echo "usage:"
   echo "   $0 PATH/TO/file.md"
   exit;
fi

h="${BASE_PATH}/tmpl/template.head.html"
f="${BASE_PATH}/tmpl/template.foot.html"
t="${BASE_PATH}/tmpl/template.html"
if [ -f $1 ]; then
   filename=(${1/%\.md/ })
   pathall="${filename}.all.html"
   path="${filename}.html"
   rm  $path $pathall 2>/dev/null
   #if [ -f $path ]; then
   #   echo " file ${path} exist!"
   #   exit 1
   #fi
   cat $h > $pathall
   cat $1 >> $pathall
   cat $f >> $pathall
   sed s/PATHTOFILEmd/$1/ $t > $path 
else
   echo "file $1 not exist"
fi
exit
