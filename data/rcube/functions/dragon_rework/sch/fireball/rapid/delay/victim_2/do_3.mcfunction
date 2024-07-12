# Made by: @rcube.
# Rapid-fire fireball
#
# Called By: rcube:dragon_rework/sch/fireball/rapid/do
# Ran as: Entity, Ender Dragon (scores={rcube_dragonRework.phase=8})

# Summon 4th fireball
execute as @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] at @s facing entity @a[tag=dragon_rework.fireball.VICTIM_2,limit=1,predicate=rcube:dragon_rework/end_centre,gamemode=!spectator] eyes positioned ^ ^ ^17 run function rcube:dragon_rework/sch/fireball/rapid/3