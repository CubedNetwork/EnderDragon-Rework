# Made by: @rcube.
# Play music for phase1
#
# Called By: rcube:dragon_rework/dragon
# Ran as: Entity, Player (player.musicMad = false)

# Play
playsound rcube:dragon_rework/phase2 record @s ~ ~ ~ 1 1 1
tag @s add dragon_rework.player.musicMad

# Loop track
schedule function rcube:dragon_rework/sch/music/phase2 5131t append