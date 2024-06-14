# Made by: @rcube.
# Play music for phase1
#
# Called By: rcube:dragon_rework/dragon
# Ran as: Entity, Player (player.musicMad = false)

# Play
execute if entity @s[tag=dragon_rework.player.musicMad.loop] run playsound rcube:dragon_rework/phase2 record @s ~ ~ ~ 1 1 1

# Loop track
execute if entity @s[tag=dragon_rework.player.musicMad.loop] run schedule function rcube:dragon_rework/sch/music/phase2 5131t append