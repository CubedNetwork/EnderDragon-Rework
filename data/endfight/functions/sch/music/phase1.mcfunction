# Made by: @rcube.
# Play music for phase1

execute if entity @s[tag=playerMusicLoop] run playsound endfight:boss/phase1 record @s ~ ~ ~ 1 1 1

# Loop track
execute if entity @s[tag=playerMusicLoop] run schedule function endfight:sch/music/phase1 5377t append