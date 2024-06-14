# Made by: @rcube.
# One-hit fireball
#
# Called By: rcube:dragon_rework/attacks/do
# Ran as: Entity, Ender Dragon (scores={rcube.dragonRework_customDragonPhase=3})

execute positioned 0. 0 0. run summon fireball ^ ^ ^.1 {HasVisualFire:0b,ExplosionPower:5b,power:[0.0,-1.0,0.0],Tags:["fireball"],Item:{id:"minecraft:dragon_egg",Count:1b}}
execute as @e[tag=fireball] run data modify entity @s power set from entity @s Pos
execute as @e[tag=fireball] run data modify entity @s Owner set from entity @s UUID
tp @e[tag=fireball] ~ ~ ~
tag @e remove fireball