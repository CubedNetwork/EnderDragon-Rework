# Made by: @rcube.
# Explosion particles to indicate phase change
#
# Called By: rcube:dragon_rework/dragon
# Ran as: Entity, Ender Dragon (dragonInit = true)

# Particles
execute as @e[tag=dragon_rework.dragonInit] at @s if entity @s[tag=dragon_rework.MAD,tag=!dragon_rework.UNHINGED] run particle minecraft:explosion ~ ~ ~ 3 3 3 1 50 force
execute as @e[tag=dragon_rework.dragonInit] at @s if entity @s[tag=dragon_rework.UNHINGED] run particle minecraft:explosion ~ ~ ~ 3 3 3 1 75 force

# Sound
execute as @e[tag=dragon_rework.dragonInit] at @s run playsound minecraft:entity.explode hostile @a[predicate=rcube:dragon_rework/end_centre] ~ ~ ~ 10

# Loop
scoreboard players add Explosion rcube_dragonRework.store 1
execute as @e[tag=dragon_rework.dragonInit] if entity @s[tag=dragon_rework.MAD,tag=!dragon_rework.UNHINGED] unless score Explosion rcube_dragonRework.store matches 3.. run schedule function rcube:dragon_rework/explosion 10t append
execute as @e[tag=dragon_rework.dragonInit] if entity @s[tag=dragon_rework.UNHINGED] unless score Explosion rcube_dragonRework.store matches 6.. run schedule function rcube:dragon_rework/explosion 8t append
