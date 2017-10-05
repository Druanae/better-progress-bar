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
<<<<<<< HEAD
>>>>>>> d684816... Initial Commit
=======
A script I wrote that will take the currently playing song and recolour it to display the percentage completed.
![Example](screenshots/example.png)

>>>>>>> 34dc9eb... README.md: added example image
=======
A script I wrote that will take the currently playing song and recolour it to display the percentage completed in Lemonbar.
![1](/screenshots/example.png)
=======
A script I wrote that will take the currently playing song and recolour it to display the percentage completed in Lemonbar.  
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
![1](/screenshot/example.png)
>>>>>>> 12e62f5... README.md: fixed image link
=======
.center[![1](/screenshot/example.png)]
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> aa8cfa0... screenshot/example.png: center aligned screenshot

=======
========================================
>>>>>>> 4c75e60... README.md: added horizontal rule and center aligned example.png
=======
=======
![1](/screenshot/example.png)
>>>>>>> a5c31c6... README.md: apparently center align doesn't work with Git's particular flavour of markdown so I removed that.
=======
=======
Outputs the song title - artist name if tagged correctly, otherwise outputs the file name. To change this edit the string in the `songstr` variable on line 5.  
>>>>>>> 124a87e... README.md: did some formatting, added instructions on how to reformat output.
=======
Outputs the song title - artist name if tagged correctly, otherwise outputs the file name.  
<<<<<<< HEAD
<<<<<<< HEAD
To change this edit the string in the `songstr` variable on line 5.  
>>>>>>> af47566... README.md: did some formatting.
=======
To change this edit the string in the `songstr` variable on line 5. See `man mpc` for more formatting options. 
>>>>>>> 01165e6... README.md: did some formatting.
=======
To change this edit the string in the `songstr` variable on line 5. See `man mpc` for more formatting options.  
>>>>>>> 2f739d4... README.md: Added newline before example.png
Example: ![1](/screenshot/example.png)
>>>>>>> 0450e6f... Updated README.md

<<<<<<< HEAD
>>>>>>> 3fff6db... README.md: removed horizontal rule
Only dependency is mpc and subsequently MPD.
=======
Only dependency is mpc and subsequently MPD.  
>>>>>>> 124a87e... README.md: did some formatting, added instructions on how to reformat output.
To use it simply call it in your lemonbar script, for example:
```bash
echo "%{c}$(better-music.sh)" | lemonbar -p -B "#000" -F "#fff"
```
<<<<<<< HEAD
To change the colour it sets for the percentage completed change the value of `$completed="#dc1566"` to whatever you like. Must be a valid colour that lemonbar will accept.
>>>>>>> eef0abc... README.md: finish instructions.
=======
To change the colour it sets for the percentage completed change the value of `$completed="#dc1566"` to whatever you like.  
Must be a valid colour that lemonbar will accept.
>>>>>>> 124a87e... README.md: did some formatting, added instructions on how to reformat output.
