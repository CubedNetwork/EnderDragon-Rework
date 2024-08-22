# Made by: @rcube.
# Boom!
#
# Called By: rcube:dragon_rework/attacks/mad/rapid_fireball
# Ran as: Entity, Player (VICTIM)

execute if entity @s[tag=dragon_rework.MAD] run execute positioned 0. 0 0. run summon fireball ^ ^ ^.1 {HasVisualFire:false,ExplosionPower:2,power:[0.0,-1.0,0.0],Tags:["dragon_rework.fireball","dragon_rework.fireball.0"]}

# Data
execute as @e[tag=dragon_rework.fireball.0,type=minecraft:fireball] run data modify entity @s power set from entity @s Pos
execute as @e[tag=dragon_rework.fireball.0,type=minecraft:fireball] run data modify entity @s Owner set from entity @e[tag=dragon_rework.dragonInit,limit=1,type=minecraft:ender_dragon] UUID

# Move to dragon
tp @e[tag=dragon_rework.fireball.0,type=minecraft:fireball] ~ ~ ~

# Clear tags
tag @e[tag=dragon_rework.fireball.0,type=minecraft:fireball] remove dragon_rework.fireball
tag @e[tag=dragon_rework.fireball.0,type=minecraft:fireball] remove dragon_rework.fireball.0