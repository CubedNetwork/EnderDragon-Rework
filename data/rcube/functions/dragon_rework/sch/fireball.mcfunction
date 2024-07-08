# Made by: @rcube.
# One-hit fireball
#
# Called By: rcube:dragon_rework/attacks/do
# Ran as: Entity, Ender Dragon (scores={rcube_dragonRework.phase=3})

# Check if mad -> which fireball to summon
execute unless entity @s[tag=dragon_rework.MAD] run execute positioned 0. 0 0. run summon fireball ^ ^ ^.1 {HasVisualFire:0b,ExplosionPower:5b,power:[0.0,-1.0,0.0],Tags:["dragon_rework.fireball"],Item:{id:"minecraft:dragon_egg",Count:1b}}
execute if entity @s[tag=dragon_rework.MAD] run execute positioned 0. 0 0. run summon fireball ^ ^ ^.1 {HasVisualFire:0b,ExplosionPower:5b,power:[0.0,-1.0,0.0],Tags:["dragon_rework.fireball"],Item:{id:"minecraft:dragon_egg",Count:1b}}

# Data
execute as @e[tag=dragon_rework.fireball] run data modify entity @s power set from entity @s Pos
execute as @e[tag=dragon_rework.fireball] run data modify entity @s Owner set from entity @e[tag=dragon_rework.dragonInit,limit=1] UUID

# Move to dragon
tp @e[tag=dragon_rework.fireball] ~ ~ ~

# Clear tags
tag @e[tag=dragon_rework.fireball] remove dragon_rework.fireball