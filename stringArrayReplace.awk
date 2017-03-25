#!/usr/bin/gawk -f

BEGIN {
    # Transfer to unix-style new line
    RS = "\r|\n|\r\n|\n\r"; ORS="\n"
    # Set FS for csv file
    FS = ","
}

# Processing string pair file.
# Ignore first line and remove pairs with two identical words in csv file
FILENAME == ARGV[1] && FNR > 1 && $1 != $2 {
    pair[$1] = $2
}

FILENAME != ARGV[1] {
    for (key in pair)
        gsub("\\<" key "\\>", pair[key])
    print
}
