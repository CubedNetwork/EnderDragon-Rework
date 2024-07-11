# Made by: @rcube.
# Okay, dragon has been ticked off. time to do a really epic
#
# Called By: rcube:dragon_rework/tick
# Ran as: Entity, Ender Dragon (dragonInit = true)

# Timer + Attack handling
execute if entity @s[scores={rcube_dragonRework.dragon.health=..499}] run scoreboard players remove @s rcube_dragonRework.timer.attacks 1
execute if entity @s[scores={rcube_dragonRework.timer.attacks=0}] run function rcube:dragon_rework/attacks/do
execute unless entity @s[tag=dragon_rework.MAD] if entity @s[scores={rcube_dragonRework.timer.attacks=0}] run scoreboard players set @s rcube_dragonRework.timer.attacks 400
execute if entity @s[tag=dragon_rework.MAD] if entity @s[scores={rcube_dragonRework.timer.attacks=0}] run scoreboard players set @s rcube_dragonRework.timer.attacks 200

# Health handling
execute store result score @s rcube_dragonRework.dragon.health run data get entity @s Health

# ##########################
# Music Handling
# ##########################

# #####################
# Timer
# #####################
# Prepare timer
execute as @a[tag=dragon_rework.player.music,tag=!dragon_rework.player.music.timerInit] run scoreboard players set @s rcube_dragonRework.timer.music 1
execute as @a[tag=dragon_rework.player.music,tag=!dragon_rework.player.music.timerInit] run tag @s add dragon_rework.player.music.timerInit
execute as @a[tag=dragon_rework.player.musicMAD,tag=!dragon_rework.player.musicMAD.timerInit] run scoreboard players set @s rcube_dragonRework.timer.music 1
execute as @a[tag=dragon_rework.player.musicMAD,tag=!dragon_rework.player.musicMAD.timerInit] run tag @s add dragon_rework.player.musicMAD.timerInit

# Tick timer down
execute as @a[tag=dragon_rework.player.music] run scoreboard players remove @s rcube_dragonRework.timer.music 1
execute as @a[tag=dragon_rework.player.music] if entity @s[scores={rcube_dragonRework.timer.music=0}] run function rcube:dragon_rework/music

# Reset timer
execute as @a[tag=dragon_rework.player.music,tag=!dragon_rework.player.musicMAD] if entity @s[scores={rcube_dragonRework.timer.music=0}] run scoreboard players set @s rcube_dragonRework.timer.music 5377
execute as @a[tag=dragon_rework.player.musicMAD] if entity @s[scores={rcube_dragonRework.timer.music=0}] run scoreboard players set @s rcube_dragonRework.timer.music 5131


# #####################
# Play
# #####################
# Add delay before tagging (10s)
execute unless entity @s[tag=dragon_rework.music] run schedule function rcube:dragon_rework/sch/music_tag 10s

# General
execute if entity @s[tag=dragon_rework.music] as @a[predicate=rcube:dragon_rework/end_centre,tag=!dragon_rework.player.music] run tag @s add dragon_rework.player.music

# Stop Default Music
execute if entity @s[tag=dragon_rework.music] run stopsound @a[predicate=rcube:dragon_rework/end_centre] music

# Phase 1
execute if entity @s[tag=dragon_rework.music,tag=!dragon_rework.music.MAD] run tag @s add dragon_rework.music.phase1

# MAD
execute if entity @s[scores={rcube_dragonRework.dragon.health=0..250}] run tag @s add dragon_rework.music.MAD
execute if entity @s[tag=dragon_rework.music.MAD,tag=dragon_rework.music.phase1] run tag @s remove dragon_rework.music.phase1
execute if entity @s[tag=dragon_rework.music.MAD] as @a[predicate=rcube:dragon_rework/end_centre,tag=!dragon_rework.player.musicMAD.init] run stopsound @s record rcube:dragon_rework.phase1
execute if entity @s[tag=dragon_rework.music.MAD] as @a[predicate=rcube:dragon_rework/end_centre,tag=!dragon_rework.player.musicMAD.init] run tag @s add dragon_rework.player.musicMAD.init
execute if entity @s[tag=dragon_rework.music.MAD] as @a[predicate=rcube:dragon_rework/end_centre,tag=dragon_rework.player.musicMAD.init,tag=!dragon_rework.player.musicMAD] run tag @s add dragon_rework.player.musicMAD

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

# ##########################
# End Crystal Handling
# ##########################

# #####################
# Cage + Respawn
# #####################
# Crystal Detection
execute as @e[tag=dragon_rework.crystal,type=minecraft:marker] at @s if entity @e[tag=dragon_rework.crystalInit,distance=..2,type=minecraft:end_crystal] run tag @s add dragon_rework.crystal.near
execute as @e[tag=dragon_rework.crystal,type=minecraft:marker] at @s unless entity @e[tag=dragon_rework.crystalInit,distance=..2,type=minecraft:end_crystal] run tag @s remove dragon_rework.crystal.near

# Cage (Phase 1)
execute unless entity @s[tag=dragon_rework.dragon.crystalInit.cage] as @e[tag=dragon_rework.crystal,tag=dragon_rework.crystal.near,type=minecraft:marker] run tag @s add dragon_rework.crystal.cage
execute unless entity @s[tag=dragon_rework.dragon.crystalInit.cage] run tag @s add dragon_rework.dragon.crystalInit.cage
# Respawn + Cage (MAD)
execute if entity @s[scores={rcube_dragonRework.dragon.health=0..250}] unless entity @s[tag=dragon_rework.MAD] as @e[tag=dragon_rework.crystal,tag=!dragon_rework.crystal.near,sort=random,limit=3,type=minecraft:marker] run tag @s add dragon_rework.crystal.respawn
execute as @e[tag=dragon_rework.crystal.respawn,type=minecraft:marker] run summon minecraft:end_crystal ~ ~ ~ {Tags:["dragon_rework.crystalInit"]}
execute if entity @e[tag=dragon_rework.crystal.respawn,type=minecraft:marker] as @e[tag=dragon_rework.crystal,tag=dragon_rework.crystal.near,type=minecraft:marker] run tag @s add dragon_rework.crystal.cage

# Cage
execute as @e[tag=dragon_rework.crystal.cage,type=minecraft:marker] rotated ~ 0 run function rcube:dragon_rework/crystal/cage

# Clear tags
tag @e[tag=dragon_rework.crystal.respawn,type=minecraft:marker] remove dragon_rework.crystal.respawn
tag @e[tag=dragon_rework.crystal.cage,type=minecraft:marker] remove dragon_rework.crystal.cage

# #####################
# Minions
# #####################
# Summon
execute as @e[tag=dragon_rework.crystal,tag=!dragon_rework.crystal.near,tag=!dragon_rework.crystal.destroyed,type=minecraft:marker] at @s rotated ~ 0 run function rcube:dragon_rework/crystal/minion

# Clear tag if crystal is respawned
execute as @e[tag=dragon_rework.crystal.near,type=minecraft:marker] run tag @s remove dragon_rework.crystal.destroyed

# ##########################
# Entity Count
# ##########################
execute store result score Entity.EndZombie rcube_dragonRework.store if entity @e[tag=dragon_rework.endZombie,type=minecraft:zombie]
execute store result score Entity.CustomPhantom rcube_dragonRework.store if entity @e[tag=dragon_rework.phantom,type=minecraft:phantom]

# Handle becoming MAD
execute if entity @s[scores={rcube_dragonRework.dragon.health=0..250}] unless entity @s[tag=dragon_rework.MAD] run function rcube:dragon_rework/attacks/mad/miniboss/summon
execute if entity @s[scores={rcube_dragonRework.dragon.health=0..250}] unless entity @s[tag=dragon_rework.MAD] run tag @s add dragon_rework.MAD
execute if entity @s[tag=dragon_rework.MAD] at @s run particle portal ~ ~ ~ 3 3 3 1 50 force

# Handle invunerable
execute if entity @e[tag=dragon_rework.miniboss,type=minecraft:marker] run data merge entity @s {Invulnerable:1b}
execute unless entity @e[tag=dragon_rework.miniboss,type=minecraft:marker] run data merge entity @s {Invulnerable:0b}

# Remove beds
execute store success score success.bed rcube_dragonRework.store run fill ~8 ~8 ~8 ~-8 ~-8 ~-8 air replace #minecraft:beds
execute if score success.bed rcube_dragonRework.store matches 1 run title @a[distance=..20] times 5 20 10
execute if score success.bed rcube_dragonRework.store matches 1 run title @a[distance=..20] title ""
execute if score success.bed rcube_dragonRework.store matches 1 run title @a[distance=..20] subtitle {"text":"All beds near dragon will be removed","color":"red"}
execute if score success.bed rcube_dragonRework.store matches 1 run scoreboard players set success.bed rcube_dragonRework.store 0