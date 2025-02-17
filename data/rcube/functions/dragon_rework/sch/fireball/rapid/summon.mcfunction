# Made by: @rcube.
# Summon & shoot fireball
#
# Called By: rcube:dragon_rework/sch/fireball/rapid/launch, THIS
# Ran as: Entity, Ender Dragon (scores={rcube_dragonRework.phase=8})

# Cycle victim
execute as @a[scores={rcube_dragonRework.temp=2},limit=1] run tag @s add dragon_rework.fireball_rapid.VICTIM.temp
scoreboard players reset @a[tag=dragon_rework.fireball_rapid.VICTIM.temp] rcube_dragonRework.temp
execute as @a[tag=dragon_rework.fireball_rapid.VICTIM.temp] run tag @s add dragon_rework.fireball_rapid.VICTIM

# Summon temporary marker
execute facing entity @a[tag=dragon_rework.fireball_rapid.VICTIM.temp] eyes positioned ^ ^ ^17 positioned 0.0 0 0.0 run summon marker ^ ^ ^3 {Tags:["dragon_rework.fireball_rapid.dir_tmp"]}

# Summon fireball
execute as @e[tag=dragon_rework.dragonInit] at @s if entity @s[tag=dragon_rework.MAD,tag=!dragon_rework.UNHINGED] facing entity @a[tag=dragon_rework.fireball_rapid.VICTIM.temp] eyes run summon fireball ^ ^ ^.1 {HasVisualFire:false,ExplosionPower:3,Tags:["dragon_rework.fireball","dragon_rework.fireball_rapid","dragon_rework.fireball_rapid.temp","dragon_rework.remove"]}
execute as @e[tag=dragon_rework.dragonInit] at @s if entity @s[tag=dragon_rework.UNHINGED] facing entity @a[tag=dragon_rework.fireball_rapid.VICTIM.temp] eyes run summon fireball ^ ^ ^.1 {HasVisualFire:false,ExplosionPower:4,Tags:["dragon_rework.fireball","dragon_rework.fireball_rapid","dragon_rework.fireball_rapid.temp","dragon_rework.remove"]}

# Play sound
execute as @e[tag=dragon_rework.dragonInit] at @s run playsound minecraft:entity.ender_dragon.shoot hostile @a[tag=dragon_rework.fireball_rapid.VICTIM.temp] ~ ~ ~ 10

# Set Owner
data modify entity @e[tag=dragon_rework.fireball_rapid.temp,limit=1] Owner set from entity @e[tag=dragon_rework.dragonInit,limit=1] UUID

# Move to dragon
execute as @e[tag=dragon_rework.dragonInit] at @s run tp @e[tag=dragon_rework.fireball_rapid.temp] ~ ~ ~

# Set power (fireball motion)
data modify entity @e[tag=dragon_rework.fireball_rapid.temp,limit=1] power set from entity @e[tag=dragon_rework.fireball_rapid.dir_tmp,limit=1] Pos

# Cleanup
tag @e[tag=dragon_rework.fireball_rapid.temp] remove dragon_rework.fireball_rapid.temp
tag @a[tag=dragon_rework.fireball_rapid.VICTIM.temp] remove dragon_rework.fireball_rapid.VICTIM.temp
kill @e[tag=dragon_rework.fireball_rapid.dir_tmp]

# Loop if players left
execute if entity @a[scores={rcube_dragonRework.temp=2}] run function rcube:dragon_rework/sch/fireball/rapid/summon
