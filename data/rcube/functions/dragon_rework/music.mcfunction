# Made by: @rcube.
# Play music
#
# Called By: rcube:dragon_rework/dragon
# Ran as: Entity, Player (predicate=rcube:dragon_rework/end_centre)

# Phase 1
execute if entity @e[tag=dragon_rework.music.phase1,type=minecraft:ender_dragon] as @a[tag=dragon_rework.player.music] at @s run playsound rcube:dragon_rework.phase1 record @s 0 ~ 0 15 1 1

# MAD
execute if entity @e[tag=dragon_rework.music.MAD,type=minecraft:ender_dragon] as @a[tag=dragon_rework.player.musicMAD] at @s run playsound rcube:dragon_rework.phase2 record @s 0 ~ 0 15 1 1