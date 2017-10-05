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


    # set output string colour, use yellow if paused and red if playing
    if [[ "$songsta" == "paused" ]]; then
        outstr="%{F$paus_col}"
    else
        outstr="%{F$comp_col}"
    fi

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

    echo "$outstr%{F-}"
}
music_percent
