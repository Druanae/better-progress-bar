#!/bin/bash
music_percent() {
    comp_col="#dc1566" # stores the colour of the % complete text
    paus_col="#d7d787"

    # current song in format "title - artist" if tagged, if not use filename
    songstr=$(mpc current -f '[%title% - %artist%|%file%] ')
    # get song status
    songsta=$(mpc status | awk -F "[][]" 'NR==2{print $2}')

    # get the % of the song completed
    percentage=$(mpc | grep -o "(.*%)")
    percentage=${percentage:1:-2}

    # get the number of characters in the song name
    length=$(echo $songstr | wc -m)

    # convert songstr's length to correspond with percentage values
    underline=$(($((percentage * length)) / 100))


    if [[ "$songsta" == "paused" ]]; then
        # if paused, change entire string paus_col
        outstr="%{F$paus_col}$songstr"
    else
        # else colour progress % comp_col
        outstr="%{F$comp_col}"
        # Format output string
        for (( i=0; i<${#songstr}; i++ )); do
            if [[ "$i" == "$underline" ]]; then
                # reset output colour then output current character
                outstr="${outstr}%{F-}${songstr:$i:1}"
            else
                # output current character
                outstr="${outstr}${songstr:$i:1}"
            fi
        done
    fi


    echo "$outstr%{F-}"
}
music_percent
