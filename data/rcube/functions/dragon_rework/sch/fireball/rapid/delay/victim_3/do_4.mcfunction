# Made by: @rcube.
# Rapid-fire fireball
#
# Called By: rcube:dragon_rework/sch/fireball/rapid/do
# Ran as: Entity, Ender Dragon (scores={rcube_dragonRework.phase=8})

# Summon 5th fireball
execute as @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] at @s facing entity @a[tag=dragon_rework.fireball.VICTIM_3,limit=1,predicate=rcube:dragon_rework/end_centre,gamemode=!spectator] eyes positioned ^ ^ ^17 run function rcube:dragon_rework/sch/fireball/rapid/4

# Clear tag
tag @a[tag=dragon_rework.fireball.VICTIM_1] remove dragon_rework.fireball.VICTIM
tag @a[tag=dragon_rework.fireball.VICTIM_3] remove dragon_rework.fireball.VICTIM_3