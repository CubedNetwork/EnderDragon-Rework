# Made by: @rcube.
# Rapid-fire fireball
#
# Called By: rcube:dragon_rework/attacks/do_mad
# Ran as: Entity, Ender Dragon (scores={rcube_dragonRework.phase=8})

# #####################
# Begin Perch
# #####################
data modify entity @s DragonPhase set value 3

# #####################
# Agro Endermen
# #####################
# choose players within 15 block range of monument, 10 player limit
execute at @e[tag=dragon_rework.monumentMarker] run tag @a[tag=!dragon_rework.perch.enderman.VICTIM,predicate=rcube:dragon_rework/end_centre,distance=..15,gamemode=!spectator,sort=nearest,limit=10] add dragon_rework.perch.enderman.VICTIM

# label victims 1 to 10
execute at @s run tag @r[tag=dragon_rework.perch.enderman.VICTIM,predicate=rcube:dragon_rework/end_centre,tag=!dragon_rework.perch.enderman.VICTIM_1,tag=!dragon_rework.perch.enderman.VICTIM_2,tag=!dragon_rework.perch.enderman.VICTIM_3,tag=!dragon_rework.perch.enderman.VICTIM_4,tag=!dragon_rework.perch.enderman.VICTIM_5,tag=!dragon_rework.perch.enderman.VICTIM_6,tag=!dragon_rework.perch.enderman.VICTIM_7,tag=!dragon_rework.perch.enderman.VICTIM_8,tag=!dragon_rework.perch.enderman.VICTIM_9,gamemode=!spectator] add dragon_rework.perch.enderman.VICTIM_0
execute at @s run tag @r[tag=dragon_rework.perch.enderman.VICTIM,predicate=rcube:dragon_rework/end_centre,tag=!dragon_rework.perch.enderman.VICTIM_0,tag=!dragon_rework.perch.enderman.VICTIM_2,tag=!dragon_rework.perch.enderman.VICTIM_3,tag=!dragon_rework.perch.enderman.VICTIM_4,tag=!dragon_rework.perch.enderman.VICTIM_5,tag=!dragon_rework.perch.enderman.VICTIM_6,tag=!dragon_rework.perch.enderman.VICTIM_7,tag=!dragon_rework.perch.enderman.VICTIM_8,tag=!dragon_rework.perch.enderman.VICTIM_9,gamemode=!spectator] add dragon_rework.perch.enderman.VICTIM_1
execute at @s run tag @r[tag=dragon_rework.perch.enderman.VICTIM,predicate=rcube:dragon_rework/end_centre,tag=!dragon_rework.perch.enderman.VICTIM_0,tag=!dragon_rework.perch.enderman.VICTIM_1,tag=!dragon_rework.perch.enderman.VICTIM_3,tag=!dragon_rework.perch.enderman.VICTIM_4,tag=!dragon_rework.perch.enderman.VICTIM_5,tag=!dragon_rework.perch.enderman.VICTIM_6,tag=!dragon_rework.perch.enderman.VICTIM_7,tag=!dragon_rework.perch.enderman.VICTIM_8,tag=!dragon_rework.perch.enderman.VICTIM_9,gamemode=!spectator] add dragon_rework.perch.enderman.VICTIM_2
execute at @s run tag @r[tag=dragon_rework.perch.enderman.VICTIM,predicate=rcube:dragon_rework/end_centre,tag=!dragon_rework.perch.enderman.VICTIM_0,tag=!dragon_rework.perch.enderman.VICTIM_1,tag=!dragon_rework.perch.enderman.VICTIM_2,tag=!dragon_rework.perch.enderman.VICTIM_4,tag=!dragon_rework.perch.enderman.VICTIM_5,tag=!dragon_rework.perch.enderman.VICTIM_6,tag=!dragon_rework.perch.enderman.VICTIM_7,tag=!dragon_rework.perch.enderman.VICTIM_8,tag=!dragon_rework.perch.enderman.VICTIM_9,gamemode=!spectator] add dragon_rework.perch.enderman.VICTIM_3
execute at @s run tag @r[tag=dragon_rework.perch.enderman.VICTIM,predicate=rcube:dragon_rework/end_centre,tag=!dragon_rework.perch.enderman.VICTIM_0,tag=!dragon_rework.perch.enderman.VICTIM_1,tag=!dragon_rework.perch.enderman.VICTIM_2,tag=!dragon_rework.perch.enderman.VICTIM_3,tag=!dragon_rework.perch.enderman.VICTIM_5,tag=!dragon_rework.perch.enderman.VICTIM_6,tag=!dragon_rework.perch.enderman.VICTIM_7,tag=!dragon_rework.perch.enderman.VICTIM_8,tag=!dragon_rework.perch.enderman.VICTIM_9,gamemode=!spectator] add dragon_rework.perch.enderman.VICTIM_4
execute at @s run tag @r[tag=dragon_rework.perch.enderman.VICTIM,predicate=rcube:dragon_rework/end_centre,tag=!dragon_rework.perch.enderman.VICTIM_0,tag=!dragon_rework.perch.enderman.VICTIM_1,tag=!dragon_rework.perch.enderman.VICTIM_2,tag=!dragon_rework.perch.enderman.VICTIM_3,tag=!dragon_rework.perch.enderman.VICTIM_4,tag=!dragon_rework.perch.enderman.VICTIM_6,tag=!dragon_rework.perch.enderman.VICTIM_7,tag=!dragon_rework.perch.enderman.VICTIM_8,tag=!dragon_rework.perch.enderman.VICTIM_9,gamemode=!spectator] add dragon_rework.perch.enderman.VICTIM_5
execute at @s run tag @r[tag=dragon_rework.perch.enderman.VICTIM,predicate=rcube:dragon_rework/end_centre,tag=!dragon_rework.perch.enderman.VICTIM_0,tag=!dragon_rework.perch.enderman.VICTIM_1,tag=!dragon_rework.perch.enderman.VICTIM_2,tag=!dragon_rework.perch.enderman.VICTIM_3,tag=!dragon_rework.perch.enderman.VICTIM_4,tag=!dragon_rework.perch.enderman.VICTIM_5,tag=!dragon_rework.perch.enderman.VICTIM_7,tag=!dragon_rework.perch.enderman.VICTIM_8,tag=!dragon_rework.perch.enderman.VICTIM_9,gamemode=!spectator] add dragon_rework.perch.enderman.VICTIM_6
execute at @s run tag @r[tag=dragon_rework.perch.enderman.VICTIM,predicate=rcube:dragon_rework/end_centre,tag=!dragon_rework.perch.enderman.VICTIM_0,tag=!dragon_rework.perch.enderman.VICTIM_1,tag=!dragon_rework.perch.enderman.VICTIM_2,tag=!dragon_rework.perch.enderman.VICTIM_3,tag=!dragon_rework.perch.enderman.VICTIM_4,tag=!dragon_rework.perch.enderman.VICTIM_5,tag=!dragon_rework.perch.enderman.VICTIM_7,tag=!dragon_rework.perch.enderman.VICTIM_8,tag=!dragon_rework.perch.enderman.VICTIM_9,gamemode=!spectator] add dragon_rework.perch.enderman.VICTIM_7
execute at @s run tag @r[tag=dragon_rework.perch.enderman.VICTIM,predicate=rcube:dragon_rework/end_centre,tag=!dragon_rework.perch.enderman.VICTIM_0,tag=!dragon_rework.perch.enderman.VICTIM_1,tag=!dragon_rework.perch.enderman.VICTIM_2,tag=!dragon_rework.perch.enderman.VICTIM_3,tag=!dragon_rework.perch.enderman.VICTIM_4,tag=!dragon_rework.perch.enderman.VICTIM_5,tag=!dragon_rework.perch.enderman.VICTIM_6,tag=!dragon_rework.perch.enderman.VICTIM_8,tag=!dragon_rework.perch.enderman.VICTIM_9,gamemode=!spectator] add dragon_rework.perch.enderman.VICTIM_8
execute at @s run tag @r[tag=dragon_rework.perch.enderman.VICTIM,predicate=rcube:dragon_rework/end_centre,tag=!dragon_rework.perch.enderman.VICTIM_0,tag=!dragon_rework.perch.enderman.VICTIM_1,tag=!dragon_rework.perch.enderman.VICTIM_2,tag=!dragon_rework.perch.enderman.VICTIM_3,tag=!dragon_rework.perch.enderman.VICTIM_4,tag=!dragon_rework.perch.enderman.VICTIM_5,tag=!dragon_rework.perch.enderman.VICTIM_6,tag=!dragon_rework.perch.enderman.VICTIM_7,tag=!dragon_rework.perch.enderman.VICTIM_8,gamemode=!spectator] add dragon_rework.perch.enderman.VICTIM_9

# choose 5 endermen per player
execute at @r[tag=dragon_rework.perch.enderman.VICTIM_0] run tag @e[type=minecraft:enderman,sort=nearest,limit=5,tag=!dragon_rework.perch.enderman.ANGRY_1,tag=!dragon_rework.perch.enderman.ANGRY_2,tag=!dragon_rework.perch.enderman.ANGRY_3,tag=!dragon_rework.perch.enderman.ANGRY_4,tag=!dragon_rework.perch.enderman.ANGRY_5,tag=!dragon_rework.perch.enderman.ANGRY_6,tag=!dragon_rework.perch.enderman.ANGRY_7,tag=!dragon_rework.perch.enderman.ANGRY_8,tag=!dragon_rework.perch.enderman.ANGRY_9] add dragon_rework.perch.enderman.ANGRY_0
execute at @r[tag=dragon_rework.perch.enderman.VICTIM_1] run tag @e[type=minecraft:enderman,sort=nearest,limit=5,tag=!dragon_rework.perch.enderman.ANGRY_0,tag=!dragon_rework.perch.enderman.ANGRY_2,tag=!dragon_rework.perch.enderman.ANGRY_3,tag=!dragon_rework.perch.enderman.ANGRY_4,tag=!dragon_rework.perch.enderman.ANGRY_5,tag=!dragon_rework.perch.enderman.ANGRY_6,tag=!dragon_rework.perch.enderman.ANGRY_7,tag=!dragon_rework.perch.enderman.ANGRY_8,tag=!dragon_rework.perch.enderman.ANGRY_9] add dragon_rework.perch.enderman.ANGRY_1
execute at @r[tag=dragon_rework.perch.enderman.VICTIM_2] run tag @e[type=minecraft:enderman,sort=nearest,limit=5,tag=!dragon_rework.perch.enderman.ANGRY_0,tag=!dragon_rework.perch.enderman.ANGRY_1,tag=!dragon_rework.perch.enderman.ANGRY_3,tag=!dragon_rework.perch.enderman.ANGRY_4,tag=!dragon_rework.perch.enderman.ANGRY_5,tag=!dragon_rework.perch.enderman.ANGRY_6,tag=!dragon_rework.perch.enderman.ANGRY_7,tag=!dragon_rework.perch.enderman.ANGRY_8,tag=!dragon_rework.perch.enderman.ANGRY_9] add dragon_rework.perch.enderman.ANGRY_2
execute at @r[tag=dragon_rework.perch.enderman.VICTIM_3] run tag @e[type=minecraft:enderman,sort=nearest,limit=5,tag=!dragon_rework.perch.enderman.ANGRY_0,tag=!dragon_rework.perch.enderman.ANGRY_1,tag=!dragon_rework.perch.enderman.ANGRY_2,tag=!dragon_rework.perch.enderman.ANGRY_4,tag=!dragon_rework.perch.enderman.ANGRY_5,tag=!dragon_rework.perch.enderman.ANGRY_6,tag=!dragon_rework.perch.enderman.ANGRY_7,tag=!dragon_rework.perch.enderman.ANGRY_8,tag=!dragon_rework.perch.enderman.ANGRY_9] add dragon_rework.perch.enderman.ANGRY_3
execute at @r[tag=dragon_rework.perch.enderman.VICTIM_4] run tag @e[type=minecraft:enderman,sort=nearest,limit=5,tag=!dragon_rework.perch.enderman.ANGRY_0,tag=!dragon_rework.perch.enderman.ANGRY_1,tag=!dragon_rework.perch.enderman.ANGRY_2,tag=!dragon_rework.perch.enderman.ANGRY_3,tag=!dragon_rework.perch.enderman.ANGRY_5,tag=!dragon_rework.perch.enderman.ANGRY_6,tag=!dragon_rework.perch.enderman.ANGRY_7,tag=!dragon_rework.perch.enderman.ANGRY_8,tag=!dragon_rework.perch.enderman.ANGRY_9] add dragon_rework.perch.enderman.ANGRY_4
execute at @r[tag=dragon_rework.perch.enderman.VICTIM_5] run tag @e[type=minecraft:enderman,sort=nearest,limit=5,tag=!dragon_rework.perch.enderman.ANGRY_0,tag=!dragon_rework.perch.enderman.ANGRY_1,tag=!dragon_rework.perch.enderman.ANGRY_2,tag=!dragon_rework.perch.enderman.ANGRY_3,tag=!dragon_rework.perch.enderman.ANGRY_4,tag=!dragon_rework.perch.enderman.ANGRY_6,tag=!dragon_rework.perch.enderman.ANGRY_7,tag=!dragon_rework.perch.enderman.ANGRY_8,tag=!dragon_rework.perch.enderman.ANGRY_9] add dragon_rework.perch.enderman.ANGRY_5
execute at @r[tag=dragon_rework.perch.enderman.VICTIM_6] run tag @e[type=minecraft:enderman,sort=nearest,limit=5,tag=!dragon_rework.perch.enderman.ANGRY_0,tag=!dragon_rework.perch.enderman.ANGRY_1,tag=!dragon_rework.perch.enderman.ANGRY_2,tag=!dragon_rework.perch.enderman.ANGRY_3,tag=!dragon_rework.perch.enderman.ANGRY_4,tag=!dragon_rework.perch.enderman.ANGRY_5,tag=!dragon_rework.perch.enderman.ANGRY_7,tag=!dragon_rework.perch.enderman.ANGRY_8,tag=!dragon_rework.perch.enderman.ANGRY_9] add dragon_rework.perch.enderman.ANGRY_6
execute at @r[tag=dragon_rework.perch.enderman.VICTIM_7] run tag @e[type=minecraft:enderman,sort=nearest,limit=5,tag=!dragon_rework.perch.enderman.ANGRY_0,tag=!dragon_rework.perch.enderman.ANGRY_1,tag=!dragon_rework.perch.enderman.ANGRY_2,tag=!dragon_rework.perch.enderman.ANGRY_3,tag=!dragon_rework.perch.enderman.ANGRY_4,tag=!dragon_rework.perch.enderman.ANGRY_5,tag=!dragon_rework.perch.enderman.ANGRY_6,tag=!dragon_rework.perch.enderman.ANGRY_8,tag=!dragon_rework.perch.enderman.ANGRY_9] add dragon_rework.perch.enderman.ANGRY_7
execute at @r[tag=dragon_rework.perch.enderman.VICTIM_8] run tag @e[type=minecraft:enderman,sort=nearest,limit=5,tag=!dragon_rework.perch.enderman.ANGRY_0,tag=!dragon_rework.perch.enderman.ANGRY_1,tag=!dragon_rework.perch.enderman.ANGRY_2,tag=!dragon_rework.perch.enderman.ANGRY_3,tag=!dragon_rework.perch.enderman.ANGRY_4,tag=!dragon_rework.perch.enderman.ANGRY_5,tag=!dragon_rework.perch.enderman.ANGRY_6,tag=!dragon_rework.perch.enderman.ANGRY_8,tag=!dragon_rework.perch.enderman.ANGRY_9] add dragon_rework.perch.enderman.ANGRY_8
execute at @r[tag=dragon_rework.perch.enderman.VICTIM_9] run tag @e[type=minecraft:enderman,sort=nearest,limit=5,tag=!dragon_rework.perch.enderman.ANGRY_0,tag=!dragon_rework.perch.enderman.ANGRY_1,tag=!dragon_rework.perch.enderman.ANGRY_2,tag=!dragon_rework.perch.enderman.ANGRY_3,tag=!dragon_rework.perch.enderman.ANGRY_4,tag=!dragon_rework.perch.enderman.ANGRY_5,tag=!dragon_rework.perch.enderman.ANGRY_6,tag=!dragon_rework.perch.enderman.ANGRY_7,tag=!dragon_rework.perch.enderman.ANGRY_8] add dragon_rework.perch.enderman.ANGRY_9

tag @e[tag=dragon_rework.perch.enderman.ANGRY_0] add dragon_rework.perch.enderman.ANGRY
tag @e[tag=dragon_rework.perch.enderman.ANGRY_1] add dragon_rework.perch.enderman.ANGRY
tag @e[tag=dragon_rework.perch.enderman.ANGRY_2] add dragon_rework.perch.enderman.ANGRY
tag @e[tag=dragon_rework.perch.enderman.ANGRY_3] add dragon_rework.perch.enderman.ANGRY
tag @e[tag=dragon_rework.perch.enderman.ANGRY_4] add dragon_rework.perch.enderman.ANGRY
tag @e[tag=dragon_rework.perch.enderman.ANGRY_5] add dragon_rework.perch.enderman.ANGRY
tag @e[tag=dragon_rework.perch.enderman.ANGRY_6] add dragon_rework.perch.enderman.ANGRY
tag @e[tag=dragon_rework.perch.enderman.ANGRY_7] add dragon_rework.perch.enderman.ANGRY
tag @e[tag=dragon_rework.perch.enderman.ANGRY_8] add dragon_rework.perch.enderman.ANGRY
tag @e[tag=dragon_rework.perch.enderman.ANGRY_9] add dragon_rework.perch.enderman.ANGRY

# set target
execute as @e[tag=dragon_rework.perch.enderman.ANGRY] run data modify entity @s AngerTime set value 2400
execute as @e[tag=dragon_rework.perch.enderman.ANGRY_0] run data modify entity @s AngryAt set from entity @a[tag=dragon_rework.perch.enderman.VICTIM_0,limit=1] UUID
execute as @e[tag=dragon_rework.perch.enderman.ANGRY_1] run data modify entity @s AngryAt set from entity @a[tag=dragon_rework.perch.enderman.VICTIM_1,limit=1] UUID
execute as @e[tag=dragon_rework.perch.enderman.ANGRY_2] run data modify entity @s AngryAt set from entity @a[tag=dragon_rework.perch.enderman.VICTIM_2,limit=1] UUID
execute as @e[tag=dragon_rework.perch.enderman.ANGRY_3] run data modify entity @s AngryAt set from entity @a[tag=dragon_rework.perch.enderman.VICTIM_3,limit=1] UUID
execute as @e[tag=dragon_rework.perch.enderman.ANGRY_4] run data modify entity @s AngryAt set from entity @a[tag=dragon_rework.perch.enderman.VICTIM_4,limit=1] UUID
execute as @e[tag=dragon_rework.perch.enderman.ANGRY_5] run data modify entity @s AngryAt set from entity @a[tag=dragon_rework.perch.enderman.VICTIM_5,limit=1] UUID
execute as @e[tag=dragon_rework.perch.enderman.ANGRY_6] run data modify entity @s AngryAt set from entity @a[tag=dragon_rework.perch.enderman.VICTIM_6,limit=1] UUID
execute as @e[tag=dragon_rework.perch.enderman.ANGRY_7] run data modify entity @s AngryAt set from entity @a[tag=dragon_rework.perch.enderman.VICTIM_7,limit=1] UUID
execute as @e[tag=dragon_rework.perch.enderman.ANGRY_8] run data modify entity @s AngryAt set from entity @a[tag=dragon_rework.perch.enderman.VICTIM_8,limit=1] UUID
execute as @e[tag=dragon_rework.perch.enderman.ANGRY_9] run data modify entity @s AngryAt set from entity @a[tag=dragon_rework.perch.enderman.VICTIM_9,limit=1] UUID

# clear tags
tag @e[tag=dragon_rework.perch.enderman.ANGRY] remove dragon_rework.perch.enderman.ANGRY_0
tag @e[tag=dragon_rework.perch.enderman.ANGRY] remove dragon_rework.perch.enderman.ANGRY_1
tag @e[tag=dragon_rework.perch.enderman.ANGRY] remove dragon_rework.perch.enderman.ANGRY_2
tag @e[tag=dragon_rework.perch.enderman.ANGRY] remove dragon_rework.perch.enderman.ANGRY_3
tag @e[tag=dragon_rework.perch.enderman.ANGRY] remove dragon_rework.perch.enderman.ANGRY_4
tag @e[tag=dragon_rework.perch.enderman.ANGRY] remove dragon_rework.perch.enderman.ANGRY_5
tag @e[tag=dragon_rework.perch.enderman.ANGRY] remove dragon_rework.perch.enderman.ANGRY_6
tag @e[tag=dragon_rework.perch.enderman.ANGRY] remove dragon_rework.perch.enderman.ANGRY_7
tag @e[tag=dragon_rework.perch.enderman.ANGRY] remove dragon_rework.perch.enderman.ANGRY_8
tag @e[tag=dragon_rework.perch.enderman.ANGRY] remove dragon_rework.perch.enderman.ANGRY_9
tag @e[tag=dragon_rework.perch.enderman.ANGRY] remove dragon_rework.perch.enderman.ANGRY
tag @e[tag=dragon_rework.perch.enderman.VICTIM] remove dragon_rework.perch.enderman.VICTIM_0
tag @e[tag=dragon_rework.perch.enderman.VICTIM] remove dragon_rework.perch.enderman.VICTIM_1
tag @e[tag=dragon_rework.perch.enderman.VICTIM] remove dragon_rework.perch.enderman.VICTIM_2
tag @e[tag=dragon_rework.perch.enderman.VICTIM] remove dragon_rework.perch.enderman.VICTIM_3
tag @e[tag=dragon_rework.perch.enderman.VICTIM] remove dragon_rework.perch.enderman.VICTIM_4
tag @e[tag=dragon_rework.perch.enderman.VICTIM] remove dragon_rework.perch.enderman.VICTIM_5
tag @e[tag=dragon_rework.perch.enderman.VICTIM] remove dragon_rework.perch.enderman.VICTIM_6
tag @e[tag=dragon_rework.perch.enderman.VICTIM] remove dragon_rework.perch.enderman.VICTIM_7
tag @e[tag=dragon_rework.perch.enderman.VICTIM] remove dragon_rework.perch.enderman.VICTIM_8
tag @e[tag=dragon_rework.perch.enderman.VICTIM] remove dragon_rework.perch.enderman.VICTIM_9
tag @e[tag=dragon_rework.perch.enderman.VICTIM] remove dragon_rework.perch.enderman.VICTIM