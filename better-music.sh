#!/bin/bash
music_percent() {
    completed="#dc1566" # stores the colour of the % complete text

    # current song in format "title - artist" if tagged, if not use filename
    songstr=$(mpc current -f '[%title% - %artist%|%file%] ')

    # get the % of the song completed
    percentage=$(mpc | grep -o "(.*%)")
    percentage=${percentage:1:-2}

    # get the number of characters in the song name
    length=$(echo $songstr | wc -m)

    # convert songstr's length to correspond with percentage values
    underline=$(($((percentage * length)) / 100))

    # set output string colour
    outstr="%{F$completed}"
    for (( i=0; i<${#songstr}; i++ )); do
        if [[ "$i" == "$underline" ]]; then
            # reset output colour then output current character
            outstr="${outstr}%{F-}${songstr:$i:1}"
        else
            # output current character
            outstr="${outstr}${songstr:$i:1}"
        fi
    done

    echo "$outstr%{F-}"
}
music_percent
