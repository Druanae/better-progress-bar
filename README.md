# better music bar
A script I wrote that will take the currently playing song and recolour it to display the percentage completed in Lemonbar.  
Example: ![1](/screenshot/example.png)

Only dependency is mpc and subsequently MPD.
To use it simply call it in your lemonbar script, for example:
```bash
echo "%{c}$(better-music.sh)" | lemonbar -p -B "#000" -F "#fff"
```
To change the colour it sets for the percentage completed change the value of `$completed="#dc1566"` to whatever you like. Must be a valid colour that lemonbar will accept.
