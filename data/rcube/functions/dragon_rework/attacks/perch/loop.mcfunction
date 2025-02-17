# Made by: @rcube.
# Set aggro
#
# Called By: rcube:dragon_rework/attacks/run
# Ran as: Entity, Ender Dragon (scores={rcube_dragonRework.phase=4})

# Cycle victim
execute as @a[scores={rcube_dragonRework.temp=4},limit=1] run tag @s add dragon_rework.perch_enderman.VICTIM.temp
scoreboard players reset @a[tag=dragon_rework.perch_enderman.VICTIM.temp] rcube_dragonRework.temp
execute as @a[tag=dragon_rework.perch_enderman.VICTIM.temp] run tag @s add dragon_rework.perch_enderman.VICTIM

# Pick endermen
execute if entity @s[tag=dragon_rework.MAD,tag=!dragon_rework.UNHINGED] at @a[tag=dragon_rework.perch_enderman.VICTIM.temp] run tag @e[type=minecraft:enderman,tag=!dragon_rework.perch_enderman.ANGRY,sort=nearest,limit=5] add dragon_rework.perch_enderman.ANGRY.temp
execute if entity @s[tag=dragon_rework.UNHINGED] at @a[tag=dragon_rework.perch_enderman.VICTIM.temp] run tag @e[type=minecraft:enderman,tag=!dragon_rework.perch_enderman.ANGRY,sort=nearest,limit=7] add dragon_rework.perch_enderman.ANGRY.temp
execute as @e[tag=dragon_rework.perch_enderman.ANGRY.temp] run tag @s add dragon_rework.perch_enderman.ANGRY
execute as @e[tag=dragon_rework.perch_enderman.ANGRY.temp] run tag @s add dragon_rework.enderman.ANGRY

# Set aggro
execute as @e[tag=dragon_rework.perch_enderman.ANGRY.temp] run data modify entity @s AngerTime set value 2400
execute as @e[tag=dragon_rework.perch_enderman.ANGRY.temp] run data modify entity @s AngryAt set from entity @a[tag=dragon_rework.perch_enderman.VICTIM.temp,limit=1] UUID

# Remove stale data
tag @a[tag=dragon_rework.perch_enderman.VICTIM.temp] remove dragon_rework.perch_enderman.VICTIM.temp
tag @e[tag=dragon_rework.perch_enderman.ANGRY.temp] remove dragon_rework.perch_enderman.ANGRY.temp

# Loop if players left
execute if entity @a[scores={rcube_dragonRework.temp=4}] run function rcube:dragon_rework/attacks/enderman_aggro/loop
