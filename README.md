<<<<<<< HEAD
# Better Music Progress
A script that takes the currently playing song and recolours it to display the percentage of the song completed in Lemonbar.  
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

## Todo
- [ ] Set the hyphen as a delimeter to always equal 50% completed.
=======
# better music bar
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> d684816... Initial Commit
=======
A script I wrote that will take the currently playing song and recolour it to display the percentage completed.
![Example](screenshots/example.png)

>>>>>>> 34dc9eb... README.md: added example image
=======
A script I wrote that will take the currently playing song and recolour it to display the percentage completed in Lemonbar.
![Example](screenshots/example.png)

Only dependency is mpc and subsequently MPD.
To use it simply call it in your lemonbar script, for example:
```bash
echo "%{c}$(better-music.sh)" | lemonbar -p -B "#000" -F "#fff"
```
To change the colour it sets for the percentage completed change the value of `$completed="#dc1566"` to whatever you like. Must be a valid colour that lemonbar will accept.
>>>>>>> eef0abc... README.md: finish instructions.
