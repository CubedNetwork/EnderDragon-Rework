# Made by: @rcube.
# Boom!
#
# Called By: rcube:dragon_rework/attacks/rapid_fireball
# Ran as: Entity, Ender Dragon (scores={rcube_dragonRework.phase=3})

# Cycle victim
execute as @a[scores={rcube_dragonRework.temp=3},limit=1] run tag @s add dragon_rework.fireball_strong.VICTIM.temp
scoreboard players reset @a[tag=dragon_rework.fireball_strong.VICTIM.temp] rcube_dragonRework.temp
execute as @a[tag=dragon_rework.fireball_strong.VICTIM.temp] run tag @s add dragon_rework.fireball_strong.VICTIM

# Check phase -> which fireball to summon
execute unless entity @s[tag=!dragon_rework.MAD,tag=!dragon_rework.UNHINGED] facing entity @a[tag=dragon_rework.fireball_strong.VICTIM.temp] eyes positioned ^ ^ ^17 positioned 0. 0 0. run summon fireball ^ ^ ^.1 {HasVisualFire:false,ExplosionPower:3b,power:[0.0,-1.0,0.0],Tags:["dragon_rework.fireball_strong.temp","dragon_rework.fireball","dragon_rework.fireball_strong","dragon_rework.remove"],Item:{id:"minecraft:dragon_egg",Count:1b}}
execute if entity @s[tag=dragon_rework.MAD,tag=!dragon_rework.UNHINGED] facing entity @a[tag=dragon_rework.fireball_strong.VICTIM.temp] eyes positioned ^ ^ ^17 positioned 0. 0 0. run summon fireball ^ ^ ^.1 {HasVisualFire:false,ExplosionPower:5b,power:[0.0,-1.0,0.0],Tags:["dragon_rework.fireball_strong.temp","dragon_rework.fireball","dragon_rework.fireball_strong","dragon_rework.remove"],Item:{id:"minecraft:dragon_egg",Count:1b}}
execute if entity @s[tag=dragon_rework.UNHINGED] facing entity @a[tag=dragon_rework.fireball_strong.VICTIM.temp] eyes positioned ^ ^ ^17 positioned 0. 0 0. run summon fireball ^ ^ ^.1 {HasVisualFire:false,ExplosionPower:6b,power:[0.0,-1.0,0.0],Tags:["dragon_rework.fireball_strong.temp","dragon_rework.fireball","dragon_rework.fireball_strong","dragon_rework.remove"],Item:{id:"minecraft:dragon_egg",Count:1b}}

# Play sound
execute as @e[tag=dragon_rework.dragonInit] at @s run playsound minecraft:entity.ghast.shoot hostile @a[tag=dragon_rework.fireball_strong.VICTIM.temp] ~ ~ ~ 10

# Data
execute as @e[tag=dragon_rework.fireball_strong.temp] run data modify entity @s power set from entity @s Pos
execute as @e[tag=dragon_rework.fireball_strong.temp] run data modify entity @s Owner set from entity @e[tag=dragon_rework.dragonInit,limit=1] UUID

# Move to dragon
tp @e[tag=dragon_rework.fireball_strong.temp] ~ ~ ~

# Clear tags
tag @a[tag=dragon_rework.fireball_strong.VICTIM.temp] remove dragon_rework.fireball_strong.VICTIM.temp
tag @e[tag=dragon_rework.fireball_strong.temp] remove dragon_rework.fireball_strong.temp

# Loop if players left
execute if entity @a[scores={rcube_dragonRework.temp=3}] run function rcube:dragon_rework/sch/fireball/rapid/launch
