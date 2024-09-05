# Made by: @rcube.
# Aggro 5 endermen per player, max of 3
#
# Called By: rcube:dragon_rework/attacks/do
# Ran as: Entity, Ender Dragon (scores={rcube_dragonRework.phase=1})

# choose 3 players
execute at @s run tag @r[tag=!dragon_rework.enderman.VICTIM,predicate=rcube:dragon_rework/end_centre,gamemode=!spectator] add dragon_rework.enderman.VICTIM
execute at @s run tag @r[tag=!dragon_rework.enderman.VICTIM,predicate=rcube:dragon_rework/end_centre,gamemode=!spectator] add dragon_rework.enderman.VICTIM
execute at @s run tag @r[tag=!dragon_rework.enderman.VICTIM,predicate=rcube:dragon_rework/end_centre,gamemode=!spectator] add dragon_rework.enderman.VICTIM

# label victims 1 to 3
execute at @s run tag @r[tag=dragon_rework.enderman.VICTIM,tag=!dragon_rework.enderman.VICTIM_2,tag=!dragon_rework.enderman.VICTIM_3,predicate=rcube:dragon_rework/end_centre,gamemode=!spectator] add dragon_rework.enderman.VICTIM_1
execute at @s run tag @r[tag=dragon_rework.enderman.VICTIM,tag=!dragon_rework.enderman.VICTIM_1,tag=!dragon_rework.enderman.VICTIM_3,predicate=rcube:dragon_rework/end_centre,gamemode=!spectator] add dragon_rework.enderman.VICTIM_2
execute at @s run tag @r[tag=dragon_rework.enderman.VICTIM,tag=!dragon_rework.enderman.VICTIM_1,tag=!dragon_rework.enderman.VICTIM_2,predicate=rcube:dragon_rework/end_centre,gamemode=!spectator] add dragon_rework.enderman.VICTIM_3

# choose 10 endermen per player
execute at @r[tag=dragon_rework.enderman.VICTIM_1] run tag @e[type=minecraft:enderman,sort=nearest,limit=10,tag=!dragon_rework.enderman.ANGRY_2,tag=!dragon_rework.enderman.ANGRY_3] add dragon_rework.enderman.ANGRY_1
execute at @r[tag=dragon_rework.enderman.VICTIM_2] run tag @e[type=minecraft:enderman,sort=nearest,limit=10,tag=!dragon_rework.enderman.ANGRY_1,tag=!dragon_rework.enderman.ANGRY_3] add dragon_rework.enderman.ANGRY_2
execute at @r[tag=dragon_rework.enderman.VICTIM_3] run tag @e[type=minecraft:enderman,sort=nearest,limit=10,tag=!dragon_rework.enderman.ANGRY_1,tag=!dragon_rework.enderman.ANGRY_2] add dragon_rework.enderman.ANGRY_3
tag @e[tag=dragon_rework.enderman.ANGRY_1,type=minecraft:enderman] add dragon_rework.enderman.ANGRY
tag @e[tag=dragon_rework.enderman.ANGRY_2,type=minecraft:enderman] add dragon_rework.enderman.ANGRY
tag @e[tag=dragon_rework.enderman.ANGRY_3,type=minecraft:enderman] add dragon_rework.enderman.ANGRY


# tell players who is being targeted
tellraw @a ""
execute as @a[tag=dragon_rework.enderman.VICTIM] run tellraw @a [{"text":">> ","color": "dark_red"},{"selector":"@s","color": "dark_red","bold": true},{"text":" is being targeted by enderman! ","color": "red"},{"text":"<<","color": "dark_red"}]
tellraw @a ""

# set target
execute as @e[tag=dragon_rework.enderman.ANGRY] run data modify entity @s AngerTime set value 2400
execute as @e[tag=dragon_rework.enderman.ANGRY_1] run data modify entity @s AngryAt set from entity @a[tag=dragon_rework.enderman.VICTIM_1,limit=1] UUID
execute as @e[tag=dragon_rework.enderman.ANGRY_2] run data modify entity @s AngryAt set from entity @a[tag=dragon_rework.enderman.VICTIM_2,limit=1] UUID
execute as @e[tag=dragon_rework.enderman.ANGRY_3] run data modify entity @s AngryAt set from entity @a[tag=dragon_rework.enderman.VICTIM_3,limit=1] UUID

# clear tags
tag @e[tag=dragon_rework.enderman.ANGRY,type=minecraft:enderman] remove dragon_rework.enderman.ANGRY_1
tag @e[tag=dragon_rework.enderman.ANGRY,type=minecraft:enderman] remove dragon_rework.enderman.ANGRY_2
tag @e[tag=dragon_rework.enderman.ANGRY,type=minecraft:enderman] remove dragon_rework.enderman.ANGRY_3
tag @e[tag=dragon_rework.enderman.ANGRY,type=minecraft:enderman] remove dragon_rework.enderman.ANGRY
tag @a[tag=dragon_rework.enderman.VICTIM] remove dragon_rework.enderman.VICTIM_1
tag @a[tag=dragon_rework.enderman.VICTIM] remove dragon_rework.enderman.VICTIM_2
tag @a[tag=dragon_rework.enderman.VICTIM] remove dragon_rework.enderman.VICTIM_3
tag @a[tag=dragon_rework.enderman.VICTIM] remove dragon_rework.enderman.VICTIM