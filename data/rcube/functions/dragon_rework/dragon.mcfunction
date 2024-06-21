# Made by: @rcube.
# Okay, dragon has been ticked off. time to do a really epic
#
# Called By: rcube:dragon_rework/tick
# Ran as: Entity, Ender Dragon (dragonInit = true)

# Timer + Attack handling
execute if entity @s[tag=dragon_rework.dragonInit] if entity @s[scores={rcube.dragonRework_dragonHealth=..499}] run scoreboard players remove @s rcube.dragonRework_attackTimer 1
execute if entity @s[tag=dragon_rework.dragonInit] if entity @s[scores={rcube.dragonRework_attackTimer=0}] run function rcube:dragon_rework/attacks/do
execute if entity @s[tag=dragon_rework.dragonInit] unless entity @s[tag=dragon_rework.MAD] if entity @s[scores={rcube.dragonRework_attackTimer=0}] run scoreboard players set @s rcube.dragonRework_attackTimer 400
execute if entity @s[tag=dragon_rework.dragonInit] if entity @s[tag=dragon_rework.MAD] if entity @s[scores={rcube.dragonRework_attackTimer=0}] run scoreboard players set @s rcube.dragonRework_attackTimer 200

# Health handling
execute store result score @s rcube.dragonRework_dragonHealth run data get entity @s Health

# Music handling
execute if entity @s[scores={rcube.dragonRework_dragonHealth=..499}] as @a[predicate=rcube:dragon_rework/end_centre,tag=!dragon_rework.player.music,tag=!dragon_rework.player.musicMad] run tag @s add dragon_rework.player.music.loop
execute if entity @s[scores={rcube.dragonRework_dragonHealth=..499}] as @a[predicate=rcube:dragon_rework/end_centre,tag=!dragon_rework.player.music,tag=!dragon_rework.player.musicMad] run function rcube:dragon_rework/sch/music/phase1
execute if entity @s[scores={rcube.dragonRework_dragonHealth=..499}] unless entity @s[tag=dragon_rework.music] run tag @s add dragon_rework.music
execute if entity @s[tag=dragon_rework.music] run stopsound @a[predicate=rcube:dragon_rework/end_centre] music
# If player dies
execute as @a[predicate=!rcube:dragon_rework/end_centre] run tag @s remove dragon_rework.player.music.loop
execute as @a[predicate=!rcube:dragon_rework/end_centre] run tag @s remove dragon_rework.player.music
execute as @a[predicate=!rcube:dragon_rework/end_centre] run stopsound @a record rcube:dragon_rework/phase1

# Music handling (MAD)
execute if entity @s[scores={rcube.dragonRework_dragonHealth=0..250}] as @a[predicate=rcube:dragon_rework/end_centre,tag=!dragon_rework.player.musicMad] run stopsound @a record rcube:dragon_rework/fight1
execute if entity @s[scores={rcube.dragonRework_dragonHealth=0..250}] as @a[predicate=rcube:dragon_rework/end_centre,tag=!dragon_rework.player.musicMad] run schedule clear rcube:dragon_rework/sch/phase1
execute if entity @s[scores={rcube.dragonRework_dragonHealth=0..250}] as @a[predicate=rcube:dragon_rework/end_centre,tag=!dragon_rework.player.musicMad] run tag @s add dragon_rework.player.musicMad.loop
execute if entity @s[scores={rcube.dragonRework_dragonHealth=0..250}] as @a[predicate=rcube:dragon_rework/end_centre,tag=!dragon_rework.player.musicMad] run function rcube:dragon_rework/sch/music/phase2
execute if entity @s[scores={rcube.dragonRework_dragonHealth=0..250}] as @a[predicate=rcube:dragon_rework/end_centre,tag=!dragon_rework.player.musicMad,tag=dragon_rework.player.musicMad.loop] run tag @s add dragon_rework.player.musicMad
# If player dies
execute as @a[predicate=!rcube:dragon_rework/end_centre] run tag @s remove dragon_rework.player.musicMad.loop
execute as @a[predicate=!rcube:dragon_rework/end_centre] run tag @s remove dragon_rework.player.musicMad
execute as @a[predicate=!rcube:dragon_rework/end_centre] run stopsound @a record rcube:dragon_rework/phase2

# Handle becoming MAD
execute if entity @s[scores={rcube.dragonRework_dragonHealth=0..250}] unless entity @s[tag=dragon_rework.MAD] run execute in minecraft:the_end as @e[tag=dragon_rework.crystal,sort=random,limit=3] at @s run summon minecraft:end_crystal ~ ~ ~ {Tags:["dragon_rework.crystalInit"]}
execute if entity @s[scores={rcube.dragonRework_dragonHealth=0..250}] unless entity @s[tag=dragon_rework.MAD] run tag @s add dragon_rework.MAD
execute if entity @s[scores={rcube.dragonRework_dragonHealth=0..250}] unless entity @s[tag=dragon_rework.MAD] unless entity @s[tag=dragon_rework.spawnedMiniboss] run function rcube:dragon_rework/attacks/mad/miniboss/summon
execute if entity @s[tag=dragon_rework.MAD] at @s run particle portal ~ ~ ~ 3 3 3 1 50 force

# Handle invunerable
execute if entity @e[tag=dragon_rework.miniboss] run data merge entity @s {Invulnerable:1b}

# Remove beds
execute store success score success.bed rcube.dragonRework_store run fill ~8 ~8 ~8 ~-8 ~-8 ~-8 air replace #minecraft:beds
execute if score success.bed rcube.dragonRework_store matches 1 run title @a[distance=..20] times 5t 1s 10t
execute if score success.bed rcube.dragonRework_store matches 1 run title @a[distance=..20] title ""
execute if score success.bed rcube.dragonRework_store matches 1 run title @a[distance=..20] subtitle {"text":"All beds near dragon will be removed","color":"red"}
execute if score success.bed rcube.dragonRework_store matches 1 run scoreboard players set success.bed rcube.dragonRework_store 0

# Miniboss check
execute if entity @e[tag=dragon_rework.miniboss] run tp 0 100 0