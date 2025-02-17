# Made by: @rcube.
# Boom!
#
# Called By: rcube:dragon_rework/attacks/rapid_fireball
# Ran as: Entity, Ender Dragon (scores={rcube_dragonRework.phase=3})

# Cycle victim
execute as @a[scores={rcube_dragonRework.temp=3},limit=1] run tag @s add dragon_rework.fireball_strong.VICTIM.temp
scoreboard players reset @a[tag=dragon_rework.fireball_strong.VICTIM.temp] rcube_dragonRework.temp
execute as @a[tag=dragon_rework.fireball_strong.VICTIM.temp] run tag @s add dragon_rework.fireball_strong.VICTIM

# Summon temporary marker
execute facing entity @a[tag=dragon_rework.fireball_strong.VICTIM.temp] eyes positioned ^ ^ ^17 positioned 0.0 0 0.0 run summon marker ^ ^ ^3 {Tags:["dragon_rework.fireball_strong.dir_tmp"]}

# Check phase -> which fireball to summon
execute as @e[tag=dragon_rework.dragonInit] at @s if entity @s[tag=!dragon_rework.MAD,tag=!dragon_rework.UNHINGED] facing entity @a[tag=dragon_rework.fireball_strong.VICTIM.temp] eyes run summon fireball ^ ^ ^.1 {HasVisualFire:false,ExplosionPower:3b,Tags:["dragon_rework.fireball_strong.temp","dragon_rework.fireball","dragon_rework.fireball_strong","dragon_rework.remove"],Item:{id:"minecraft:dragon_egg",Count:1b}}
execute as @e[tag=dragon_rework.dragonInit] at @s if entity @s[tag=dragon_rework.MAD,tag=!dragon_rework.UNHINGED] facing entity @a[tag=dragon_rework.fireball_strong.VICTIM.temp] eyes run summon fireball ^ ^ ^.1 {HasVisualFire:false,ExplosionPower:5b,Tags:["dragon_rework.fireball_strong.temp","dragon_rework.fireball","dragon_rework.fireball_strong","dragon_rework.remove"],Item:{id:"minecraft:dragon_egg",Count:1b}}
execute as @e[tag=dragon_rework.dragonInit] at @s if entity @s[tag=dragon_rework.UNHINGED] facing entity @a[tag=dragon_rework.fireball_strong.VICTIM.temp] eyes run summon fireball ^ ^ ^.1 {HasVisualFire:false,ExplosionPower:6b,Tags:["dragon_rework.fireball_strong.temp","dragon_rework.fireball","dragon_rework.fireball_strong","dragon_rework.remove"],Item:{id:"minecraft:dragon_egg",Count:1b}}

# Play sound
execute as @e[tag=dragon_rework.dragonInit] at @s run playsound minecraft:entity.ender_dragon.shoot hostile @a[tag=dragon_rework.fireball_strong.VICTIM.temp] ~ ~ ~ 10

# Set Owner
data modify entity @e[tag=dragon_rework.fireball_strong.temp,limit=1] Owner set from entity @e[tag=dragon_rework.dragonInit,limit=1] UUID

# Move to dragon
execute as @e[tag=dragon_rework.dragonInit] at @s run tp @e[tag=dragon_rework.fireball_rapid.temp] ~ ~ ~

# Set power (fireball motion)
data modify entity @e[tag=dragon_rework.fireball_strong.temp,limit=1] power set from entity @e[tag=dragon_rework.fireball_strong.dir_tmp,limit=1] Pos

# Cleanup
tag @a[tag=dragon_rework.fireball_strong.VICTIM.temp] remove dragon_rework.fireball_strong.VICTIM.temp
tag @e[tag=dragon_rework.fireball_strong.temp] remove dragon_rework.fireball_strong.temp
kill @e[tag=dragon_rework.fireball_strong.dir_tmp]

# Loop if players left
execute if entity @a[scores={rcube_dragonRework.temp=3}] run function rcube:dragon_rework/sch/fireball/single
