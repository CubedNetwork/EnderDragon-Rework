# Made by: @rcube.
# Play music
#
# Called By: rcube:dragon_rework/dragon
# Ran as: Entity, Player (predicate=rcube:dragon_rework/end_centre)

# Phase 1
execute if entity @e[tag=dragon_rework.music.phase1,tag=!dragon_rework.music.MAD,type=minecraft:ender_dragon] run stopsound @s music rcube:dragon_rework.phase1
execute if entity @e[tag=dragon_rework.music.phase1,type=minecraft:ender_dragon] at @s run playsound rcube:dragon_rework.phase1 music @s 0 ~ 0 1 1

# MAD + UNHINGED
execute if entity @e[tag=dragon_rework.music.MAD,type=minecraft:ender_dragon] run stopsound @s music rcube:dragon_rework.phase2
execute if entity @e[tag=dragon_rework.music.MAD,type=minecraft:ender_dragon] at @s run playsound rcube:dragon_rework.phase2 music @s 0 ~ 0 1 1
