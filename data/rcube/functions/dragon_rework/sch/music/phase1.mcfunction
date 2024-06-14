# Made by: @rcube.
# Play music for phase1
#
# Called By: rcube:dragon_rework/dragon
# Ran as: Entity, Player (player.music = false)

# Play
execute if entity @s[tag=dragon_rework.player.music.loop] run playsound rcube:dragon_rework/phase1 record @s ~ ~ ~ 1 1 1

# Loop track
execute if entity @s[tag=dragon_rework.player.music.loop] run schedule function rcube:dragon_rework/sch/music/phase1 5377t append