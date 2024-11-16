# Made by: @rcube.
# Set aggro
#
# Called By: rcube:dragon_rework/attacks/run
# Ran as: Entity, Ender Dragon (scores={rcube_dragonRework.phase=1})

# Cycle victim
execute as @a[scores={rcube_dragonRework.temp=1},limit=1] run tag @s add dragon_rework.enderman.VICTIM.temp
scoreboard players reset @a[tag=dragon_rework.enderman.VICTIM.temp] rcube_dragonRework.temp
execute as @a[tag=dragon_rework.enderman.VICTIM.temp] run tag @s add dragon_rework.enderman.VICTIM

# Pick endermen
execute if entity @s[tag=!dragon_rework.MAD,tag=!dragon_rework.UNHINGED] at @a[tag=dragon_rework.enderman.VICTIM.temp] run tag @e[type=minecraft:enderman,tag=!dragon_rework.enderman.ANGRY,sort=nearest,limit=10] add dragon_rework.enderman.ANGRY.temp
execute if entity @s[tag=dragon_rework.MAD,tag=!dragon_rework.UNHINGED] at @a[tag=dragon_rework.enderman.VICTIM.temp] run tag @e[type=minecraft:enderman,tag=!dragon_rework.enderman.ANGRY,sort=nearest,limit=12] add dragon_rework.enderman.ANGRY.temp
execute if entity @s[tag=dragon_rework.UNHINGED] at @a[tag=dragon_rework.enderman.VICTIM.temp] run tag @e[type=minecraft:enderman,tag=!dragon_rework.enderman.ANGRY,sort=nearest,limit=15] add dragon_rework.enderman.ANGRY.temp
execute as @e[tag=dragon_rework.enderman.ANGRY.temp] run tag @s add dragon_rework.enderman.ANGRY

# Set aggro
execute as @e[tag=dragon_rework.enderman.ANGRY.temp] run data modify entity @s AngerTime set value 2400
execute as @e[tag=dragon_rework.enderman.ANGRY.temp] run data modify entity @s AngryAt set from entity @a[tag=dragon_rework.enderman.VICTIM.temp,limit=1] UUID

# Remove stale data
tag @a[tag=dragon_rework.enderman.VICTIM.temp] remove dragon_rework.enderman.VICTIM.temp
tag @e[tag=dragon_rework.enderman.ANGRY.temp] remove dragon_rework.enderman.ANGRY.temp

# Loop if players left
execute if entity @a[scores={rcube_dragonRework.temp=1}] run function rcube:dragon_rework/attacks/enderman_aggro/loop
