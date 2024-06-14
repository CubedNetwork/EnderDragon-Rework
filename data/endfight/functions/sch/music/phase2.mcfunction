# Made by: @rcube.
# Play music for phase2

execute if entity @s[tag=playerMusicMAD.loop] run playsound endfight:boss/phase2 record @s ~ ~ ~ 1 1 1

# Loop track
execute if entity @s[tag=playerMusicMAD.loop] run schedule function endfight:sch/music/phase2 5131t append