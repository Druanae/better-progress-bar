# Better Music Progress
A script I wrote that will take the currently playing song and recolour it to display the percentage of the song completed in Lemonbar.  
Resets the colour to Lemonbar's foreground colour.  
Outputs "song title - artist name" if tagged correctly, otherwise outputs file name.  
To change this edit the string in the `songstr` variable on line 5. See `man mpc` for more formatting options.  
Example: ![1](/screenshot/example.png)

Only dependency is mpc and subsequently MPD.  
To use it simply call it in your lemonbar script, for example:
```bash
echo "%{c}$(better-music.sh)" | lemonbar -p -B "#000" -F "#fff"
```
To change the progress completed colour change the value of `$comp_col`.   
To change the paused colour change the value of `$paus_col`.   
Must be a valid colour in lemonbar.
