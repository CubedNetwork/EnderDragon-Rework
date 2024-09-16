# Made by: @rcube.
# Rapid-fire fireball
#
# Called By: rcube:dragon_rework/attacks/do
# Ran as: Entity, Ender Dragon (scores={rcube_dragonRework.phase=8})

# choose 3 players
execute at @s run tag @r[tag=!dragon_rework.fireball.VICTIM,predicate=rcube:dragon_rework/end_centre,gamemode=!spectator] add dragon_rework.fireball.VICTIM
execute at @s run tag @r[tag=!dragon_rework.fireball.VICTIM,predicate=rcube:dragon_rework/end_centre,gamemode=!spectator] add dragon_rework.fireball.VICTIM
execute at @s run tag @r[tag=!dragon_rework.fireball.VICTIM,predicate=rcube:dragon_rework/end_centre,gamemode=!spectator] add dragon_rework.fireball.VICTIM

# label victims 1 to 3
execute at @s run tag @r[tag=dragon_rework.fireball.VICTIM,tag=!dragon_rework.fireball.VICTIM_2,tag=!dragon_rework.fireball.VICTIM_3,predicate=rcube:dragon_rework/end_centre,gamemode=!spectator] add dragon_rework.fireball.VICTIM_1
execute at @s run tag @r[tag=dragon_rework.fireball.VICTIM,tag=!dragon_rework.fireball.VICTIM_1,tag=!dragon_rework.fireball.VICTIM_3,predicate=rcube:dragon_rework/end_centre,gamemode=!spectator] add dragon_rework.fireball.VICTIM_2
execute at @s run tag @r[tag=dragon_rework.fireball.VICTIM,tag=!dragon_rework.fireball.VICTIM_1,tag=!dragon_rework.fireball.VICTIM_2,predicate=rcube:dragon_rework/end_centre,gamemode=!spectator] add dragon_rework.fireball.VICTIM_3

# summon fireball
execute facing entity @a[tag=dragon_rework.fireball.VICTIM_1,limit=1,predicate=rcube:dragon_rework/end_centre,gamemode=!spectator] eyes positioned ^ ^ ^17 run function rcube:dragon_rework/sch/fireball/rapid/do