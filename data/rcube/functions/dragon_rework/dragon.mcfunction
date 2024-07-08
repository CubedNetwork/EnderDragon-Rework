# Made by: @rcube.
# Okay, dragon has been ticked off. time to do a really epic
#
# Called By: rcube:dragon_rework/tick
# Ran as: Entity, Ender Dragon (dragonInit = true)

# Timer + Attack handling
execute if entity @s[tag=dragon_rework.dragonInit] if entity @s[scores={rcube_dragonRework.dragon.health=..499}] run scoreboard players remove @s rcube_dragonRework.timer.attacks 1
execute if entity @s[tag=dragon_rework.dragonInit] if entity @s[scores={rcube_dragonRework.timer.attacks=0}] run function rcube:dragon_rework/attacks/do
execute if entity @s[tag=dragon_rework.dragonInit] unless entity @s[tag=dragon_rework.MAD] if entity @s[scores={rcube_dragonRework.timer.attacks=0}] run scoreboard players set @s rcube_dragonRework.timer.attacks 400
execute if entity @s[tag=dragon_rework.dragonInit] if entity @s[tag=dragon_rework.MAD] if entity @s[scores={rcube_dragonRework.timer.attacks=0}] run scoreboard players set @s rcube_dragonRework.timer.attacks 200

# Health handling
execute store result score @s rcube_dragonRework.dragon.health run data get entity @s Health

# ##########################
# Music Handling
# ##########################

# #####################
# Timer
# #####################

execute as @a[tag=dragon_rework.player.music,tag=!dragon_rework.player.music.timerInit] run scoreboard players set @s rcube_dragonRework.timer.music 1
execute as @a[tag=dragon_rework.player.music,tag=!dragon_rework.player.music.timerInit] run tag @s add dragon_rework.player.music.timerInit

execute as @a[tag=dragon_rework.player.musicMAD,tag=!dragon_rework.player.musicMAD.timerInit] run scoreboard players set @s rcube_dragonRework.timer.music 1
execute as @a[tag=dragon_rework.player.musicMAD,tag=!dragon_rework.player.musicMAD.timerInit] run tag @s add dragon_rework.player.musicMAD.timerInit

execute as @a[tag=dragon_rework.player.music] run scoreboard players remove @s rcube_dragonRework.timer.music 1
execute as @a[tag=dragon_rework.player.music] if entity @s[scores={rcube_dragonRework.timer.music=0}] run function rcube:dragon_rework/music
execute as @a[tag=dragon_rework.player.music,tag=!dragon_rework.player.musicMAD] if entity @s[scores={rcube_dragonRework.timer.music=0}] run scoreboard players set @s rcube_dragonRework.timer.music 5377
execute as @a[tag=dragon_rework.player.musicMAD] if entity @s[scores={rcube_dragonRework.timer.music=0}] run scoreboard players set @s rcube_dragonRework.timer.music 5131


# #####################
# Play
# #####################
execute if entity @s[tag=dragon_rework.music] run stopsound @a[predicate=rcube:dragon_rework/end_centre] music

# Phase 1
execute if entity @s[scores={rcube_dragonRework.dragon.health=..499},tag=!dragon_rework.MAD] run tag @s add dragon_rework.music.phase1
execute if entity @s[tag=dragon_rework.music.phase1] as @a[predicate=rcube:dragon_rework/end_centre,tag=!dragon_rework.player.music] run tag @s add dragon_rework.player.music
execute if entity @s[tag=dragon_rework.music.phase1,tag=!dragon_rework.music] run tag @s add dragon_rework.music

# MAD
execute if entity @s[scores={rcube_dragonRework.dragon.health=0..250}] run tag @s add dragon_rework.music.MAD
execute if entity @s[tag=dragon_rework.music.MAD,tag=dragon_rework.music.phase1] run tag @s remove dragon_rework.music.phase1
execute if entity @s[tag=dragon_rework.music.MAD] as @a[predicate=rcube:dragon_rework/end_centre,tag=!dragon_rework.player.musicMAD.init] run stopsound @s record rcube:dragon_rework.phase1
execute if entity @s[tag=dragon_rework.music.MAD] as @a[predicate=rcube:dragon_rework/end_centre,tag=!dragon_rework.player.musicMAD.init] run schedule clear rcube:dragon_rework/sch/phase1
execute if entity @s[tag=dragon_rework.music.MAD] as @a[predicate=rcube:dragon_rework/end_centre,tag=!dragon_rework.player.musicMAD.init] run tag @s add dragon_rework.player.musicMAD.init
execute if entity @s[tag=dragon_rework.music.MAD] as @a[predicate=rcube:dragon_rework/end_centre,tag=dragon_rework.player.musicMAD.init] run tag @s add dragon_rework.player.musicMAD

# #####################
# Dead/leave fight
# #####################
execute as @a[predicate=!rcube:dragon_rework/end_centre,tag=dragon_rework.player.music.timerInit] run scoreboard players reset @s rcube_dragonRework.timer.music

# Phase 1
execute as @a[predicate=!rcube:dragon_rework/end_centre,tag=dragon_rework.player.music] run tag @s remove dragon_rework.player.music
execute as @a[predicate=!rcube:dragon_rework/end_centre,tag=dragon_rework.player.music.timerInit] run tag @s remove dragon_rework.player.music.timerInit
execute as @a[predicate=!rcube:dragon_rework/end_centre] run stopsound @s record rcube:dragon_rework.phase1

# MAD
execute as @a[predicate=!rcube:dragon_rework/end_centre,tag=dragon_rework.player.musicMAD] run tag @s remove dragon_rework.player.musicMAD
execute as @a[predicate=!rcube:dragon_rework/end_centre,tag=dragon_rework.player.musicMAD.timerInit] run tag @s remove dragon_rework.player.musicMAD.timerInit
execute as @a[predicate=!rcube:dragon_rework/end_centre,tag=dragon_rework.player.musicMAD.init] run tag @s remove dragon_rework.player.musicMAD.init
execute as @a[predicate=!rcube:dragon_rework/end_centre] run stopsound @s record rcube:dragon_rework.phase2


# Handle becoming MAD
execute if entity @s[scores={rcube_dragonRework.dragon.health=0..250}] unless entity @s[tag=dragon_rework.MAD] run execute in minecraft:the_end as @e[tag=dragon_rework.crystal,sort=random,limit=3] at @s run summon minecraft:end_crystal ~ ~ ~ {Tags:["dragon_rework.crystalInit"]}
execute if entity @s[scores={rcube_dragonRework.dragon.health=0..250}] unless entity @s[tag=dragon_rework.MAD] run tag @s add dragon_rework.MAD
execute if entity @s[scores={rcube_dragonRework.dragon.health=0..250}] unless entity @s[tag=dragon_rework.MAD] unless entity @s[tag=dragon_rework.spawnedMiniboss] run function rcube:dragon_rework/attacks/mad/miniboss/summon
execute if entity @s[tag=dragon_rework.MAD] at @s run particle portal ~ ~ ~ 3 3 3 1 50 force

# End Crystal Caging
execute if entity @s[tag=!dragon_rework.crystal.recage.phase1,tag=!dragon_rework.MAD] at @e[tag=dragon_rework.crystal] if entity @e[type=end_crystal,distance=..3] rotated ~ 0 run function rcube:dragon_rework/recage
execute if entity @s[tag=!dragon_rework.crystal.recage.MAD,tag=dragon_rework.MAD] at @e[tag=dragon_rework.crystal] if entity @e[type=end_crystal,distance=..3] rotated ~ 0 run function rcube:dragon_rework/recage
tag @s add dragon_rework.crystal.recage.phase1
tag @s add dragon_rework.crystal.recage.MAD


# Handle invunerable
execute if entity @e[tag=dragon_rework.miniboss] run data merge entity @s {Invulnerable:1b}
execute unless entity @e[tag=dragon_rework.miniboss] run data merge entity @s {Invulnerable:0b}

# Remove beds
execute store success score success.bed rcube_dragonRework.store run fill ~8 ~8 ~8 ~-8 ~-8 ~-8 air replace #minecraft:beds
execute if score success.bed rcube_dragonRework.store matches 1 run title @a[distance=..20] times 5 20 10
execute if score success.bed rcube_dragonRework.store matches 1 run title @a[distance=..20] title ""
execute if score success.bed rcube_dragonRework.store matches 1 run title @a[distance=..20] subtitle {"text":"All beds near dragon will be removed","color":"red"}
execute if score success.bed rcube_dragonRework.store matches 1 run scoreboard players set success.bed rcube_dragonRework.store 0

# Miniboss check
execute if entity @e[tag=dragon_rework.miniboss] run tp 0 100 0