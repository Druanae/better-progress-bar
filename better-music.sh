#!/bin/bash
music_percent() {
    songstr=$(mpc current -f '[%title% - %artist%|%file%] ')

    percentage=$(mpc | grep -o "(.*%)")
    percentage=${percentage:1:-2}

    length=$(echo $songstr | wc -m)

    underline=$(($((percentage * length)) / 100))

    outstr="%{F#dc1566}"
    for (( i=0; i<${#songstr}; i++ )); do
        if [[ "$i" == "$underline" ]]; then
            outstr="${outstr}%{F-}${songstr:$i:1}"
        else
            outstr="${outstr}${songstr:$i:1}"
        fi
    done

    echo "$outstr%{F-}"
}
music_percent
