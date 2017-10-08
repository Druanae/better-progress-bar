#!/bin/bash

music_percent() {

    completion_color="#dc1566"
    paused_color="#d7d787"

    delimiter=" - "

    song_string=$(mpc current -f "[%title%$delimiter%artist%|%file%] ")
    song_status=$(mpc status | awk -F "[][]" 'NR==2{print $2}')

    percentage=$(mpc | grep -o "(.*%)")
    percentage=${percentage:1:-2}

    total_length=${#song_string}
    n_colored=$(( $(($percentage * $total_length)) / 100 ))

    output=""

    if [[ "$song_status" == "paused" ]]
    then

        output="%{F$paused_color}$song_string"

    else

        output="%{F$completion_color}"

        for (( index=0; index<$total_length; index++ ))
        do

            if [[ "$index" == "$n_colored" ]]
            then
                output="${output}%{F-}"
            fi

            output="${output}${song_string:$index:1}"

        done

    fi

    echo "$output%{F-}"

}

music_percent
