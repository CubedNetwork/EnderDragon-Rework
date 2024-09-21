# Made by: @rcube.
# Summon & shoot fireball
#
# Called By: rcube:dragon_rework/sch/fireball/rapid/launch, THIS

# Cycle victim
execute as @a[scores={rcube_dragonRework.temp=2},limit=1] run tag @s add dragon_rework.fireball_rapid.VICTIM.temp
scoreboard players reset @a[tag=dragon_rework.fireball_rapid.VICTIM.temp]
execute as @a[tag=dragon_rework.fireball_rapid.VICTIM.temp] run tag @s add dragon_rework.fireball_rapid.VICTIM

# Summon fireball
execute as @e[tag=dragon_rework.dragonInit] at @s if entity @s[tag=dragon_rework.MAD,tag=!dragon_rework.UNHINGED] facing entity @a[tag=dragon_rework.fireball_rapid.VICTIM.temp] eyes positioned ^ ^ ^17 positioned 0. 0 0. run summon fireball ^ ^ ^.1 {HasVisualFire:false,ExplosionPower:2,power:[0.0,-1.0,0.0],Tags:["dragon_rework.fireball","dragon_rework.fireball_rapid","dragon_rework.fireball_rapid.temp","dragon_rework.remove"]}
execute as @e[tag=dragon_rework.dragonInit] at @s if entity @s[tag=dragon_rework.UNHINGED] facing entity @a[tag=dragon_rework.fireball_rapid.VICTIM.temp] eyes positioned ^ ^ ^17 positioned 0. 0 0. run summon fireball ^ ^ ^.1 {HasVisualFire:false,ExplosionPower:3,power:[0.0,-1.0,0.0],Tags:["dragon_rework.fireball","dragon_rework.fireball_rapid","dragon_rework.fireball_rapid.temp","dragon_rework.remove"]}

# Play sound
execute as @e[tag=dragon_rework.dragonInit] at @s run playsound minecraft:entity.ghast.shoot hostile @a[tag=dragon_rework.fireball_rapid.VICTIM.temp] ~ ~ ~ 10

# Data
execute as @e[tag=dragon_rework.fireball_rapid.temp] run data modify entity @s power set from entity @s Pos
execute as @e[tag=dragon_rework.fireball_rapid.temp] run data modify entity @s Owner set from entity @e[tag=dragon_rework.dragonInit,limit=1] UUID

# Move to dragon
execute as @e[tag=dragon_rework.dragonInit] at @s run tp @e[tag=dragon_rework.fireball_rapid.temp] ~ ~ ~

# Clear tags
tag @e[tag=dragon_rework.fireball_rapid.temp] remove dragon_rework.fireball_rapid.temp
tag @a[tag=dragon_rework.fireball_rapid.VICTIM.temp] remove dragon_rework.fireball_rapid.VICTIM.temp

# Loop if players left
execute unless entity @a[scores={rcube_dragonRework.temp=2}] run function rcube:dragon_rework/sch/fireball/rapid/summon
