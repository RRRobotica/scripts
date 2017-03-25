#!/bin/sh
# Transfer to unix-style new line
# Ignore first line and remove pairs with two identical words in csv file
RCSV="{\n"`awk -F, '
BEGIN {RS="\r|\n|\r\n|\n\r";ORS="\n"}
FNR > 1 && $1 != $2 {print "gsub(/\<" $1 "\>/,", "\"" $2 "\"" ")"}
' $1`"\n}1"

echo "$RCSV" | gawk -f - -- $2 > $3
