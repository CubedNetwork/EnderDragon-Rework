# Made by: @rcube.
#
# Called By: #minecraft:tick
# Ran as: Server

# Dragon Init
scoreboard players set @e[type=minecraft:ender_dragon,tag=!dragon_rework.dragonInit] rcube.dragonRework_attackTimer 800
scoreboard players set @e[type=minecraft:ender_dragon,tag=!dragon_rework.dragonInit] rcube.dragonRework_phase 1
execute as @e[type=minecraft:ender_dragon,tag=!dragon_rework.dragonInit] run data merge entity @s {Health:500f,Attributes:[{Name:"generic.max_health",Base:500}]}
execute as @e[type=minecraft:ender_dragon,tag=!dragon_rework.dragonInit] run tag @e[tag=dragon_rework.crystalInit] remove dragon_rework.crystalInit
tag @e[type=minecraft:ender_dragon,tag=!dragon_rework.dragonInit] add dragon_rework.dragonInit
execute as @e[type=minecraft:ender_dragon,tag=dragon_rework.dragonInit] in minecraft:the_end run function rcube:dragon_rework/dragon

# DEBUG
#execute as @e[type=minecraft:ender_dragon,tag=ticked] if predicate rcube:dragon_rework/is_aggro run say hi

# Register End Crystal locations
execute as @e[type=minecraft:end_crystal,tag=!dragon_rework.crystalInit] at @s run summon marker ~ ~ ~ {Tags:["dragon_rework.crystal", "dragon_rework.remove"]}
tag @e[type=minecraft:end_crystal,tag=!dragon_rework.crystalInit] add dragon_rework.crystalInit

# End Zombies & Miniboss Minions
execute as @e[tag=dragon_rework.floor.spawn] at @s unless block ~ ~ ~ air run tp ~ ~1 ~

# Arrow Dodging
# Remove Arrow
execute as @e[tag=dragon_rework.arrowDodge] at @s if entity @e[type=minecraft:arrow,distance=..5] at @e[type=minecraft:arrow,distance=..5] run summon marker ~ ~ ~ {Tags:["dragon_rework.arrowDodge.arrow"]}
execute as @e[tag=dragon_rework.arrowDodge] at @s run kill @e[type=minecraft:arrow,distance=..5]
execute as @e[tag=dragon_rework.arrowDodge] at @s if entity @e[tag=dragon_rework.arrowDodge.arrow,distance=..5] run particle minecraft:reverse_portal ~ ~ ~ 0 0.125 0 0.2 500 normal
# Randomise Direction
execute if score RNG.arrow rcube.dragonRework_store matches 0 as @e[tag=dragon_rework.arrowDodge] at @s if entity @e[tag=dragon_rework.arrowDodge.arrow,distance=..5] run tp ^3 ^ ^-3
execute if score RNG.arrow rcube.dragonRework_store matches 1 as @e[tag=dragon_rework.arrowDodge] at @s if entity @e[tag=dragon_rework.arrowDodge.arrow,distance=..5] run tp ^-3 ^ ^3
kill @e[tag=dragon_rework.arrowDodge.arrow]
execute if score RNG.arrow rcube.dragonRework_store matches 1 run scoreboard players set RNG.arrow rcube.dragonRework_store 0

# Handle Death
# Music
execute unless entity @e[tag=dragon_rework.music] run schedule clear rcube:dragon_rework/sch/phase1
execute unless entity @e[tag=dragon_rework.MAD] run schedule clear rcube:dragon_rework/sch/phase2
execute unless entity @e[tag=dragon_rework.music] run stopsound @a record rcube:dragon_rework/phase1
execute unless entity @e[tag=dragon_rework.MAD] run stopsound @a record rcube:dragon_rework/phase2
execute unless entity @e[tag=dragon_rework.dragonInit] run tag @a[tag=dragon_rework.player.music] remove dragon_rework.player.music
execute unless entity @e[tag=dragon_rework.dragonInit] run tag @a[tag=dragon_rework.player.music.loop] remove dragon_rework.player.music.loop
execute unless entity @e[tag=dragon_rework.dragonInit] run tag @a[tag=dragon_rework.player.musicMad] remove dragon_rework.player.musicMad
execute unless entity @e[tag=dragon_rework.dragonInit] run tag @a[tag=dragon_rework.player.musicMad.loop] remove dragon_rework.player.musicMad.loop
# Remove left-over entities
execute unless entity @e[tag=dragon_rework.dragonInit] run kill @e[tag=dragon_rework.remove]

# Handle Miniboss Death
execute unless entity @e[tag=dragon_rework.miniboss] run kill @e[tag=dragon_rework.miniboss.minion]

# Miniboss Bossbars
execute as @e[tag=dragon_rework.miniboss] at @s store result bossbar rcube:dragon_rework.miniboss max run data get entity @s Attributes[3].Base
execute as @e[tag=dragon_rework.miniboss] at @s store result bossbar rcube:dragon_rework.miniboss value run data get entity @s Health
execute if entity @e[tag=dragon_rework.miniboss] run bossbar set rcube:dragon_rework.miniboss visible true
execute unless entity @e[tag=dragon_rework.miniboss] run bossbar set rcube:dragon_rework.miniboss visible false
bossbar set rcube:dragon_rework.miniboss players @a

# End Monument Marker needed. Does it exist? If not, spawn one in, and teleport it down
execute as @e[tag=dragon_rework.monumentMarker] at @s if block ~ ~-1 ~ air run tp ~ ~-1 ~