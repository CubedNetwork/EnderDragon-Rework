# Made by: @rcube.
# Okay, dragon has been ticked off. time to do a really epic
#
# Called By: rcube:dragon_rework/tick
# Ran as: Entity, Ender Dragon (dragonInit = true)

# Tag player
tag @a[predicate=rcube:dragon_rework/end_centre] add dragon_rework.player.participated

# Timer + Attack handling
execute unless entity @s[tag=dragon_rework.attacks.timer] if entity @a[predicate=rcube:dragon_rework/end_centre,gamemode=!spectator] run tag @s add dragon_rework.attacks.timer
execute if entity @s[tag=dragon_rework.attacks.timer] run scoreboard players remove @s rcube_dragonRework.timer.attacks 1
execute if entity @s[scores={rcube_dragonRework.timer.attacks=0}] run function rcube:dragon_rework/attacks/run
execute if entity @s[tag=!dragon_rework.MAD,tag=!dragon_rework.UNHINGED] if entity @s[scores={rcube_dragonRework.timer.attacks=..0}] run scoreboard players set @s rcube_dragonRework.timer.attacks 400
execute if entity @s[tag=dragon_rework.MAD,tag=!dragon_rework.UNHINGED] if entity @s[scores={rcube_dragonRework.timer.attacks=..0}] run scoreboard players set @s rcube_dragonRework.timer.attacks 200
execute if entity @s[tag=dragon_rework.UNHINGED] if entity @s[scores={rcube_dragonRework.timer.attacks=..0}] run scoreboard players set @s rcube_dragonRework.timer.attacks 150

# Health handling
execute store result score @s rcube_dragonRework.health run data get entity @s Health

# Fire handling
execute as @e[tag=dragon_rework.noFire,predicate=rcube:dragon_rework/is_on_fire] run data modify entity @s Fire set value -32768

# Creeper bomb health handling
execute as @e[tag=dragon_rework.creeper_bomb] store result score @s rcube_dragonRework.health run data get entity @s Health 10000
execute as @e[tag=dragon_rework.creeper_bomb] if score @s rcube_dragonRework.health matches ..19750 run data modify entity @s Health set value 20.0f

# ##########################
# Music Handling
# ##########################

# #####################
# Timers
# #####################
# Prepare timers
execute as @a[tag=dragon_rework.player.music,tag=!dragon_rework.player.music.timerInit] run scoreboard players set @s rcube_dragonRework.timer.music 1
execute as @a[tag=dragon_rework.player.music,tag=!dragon_rework.player.music.timerInit] run tag @s add dragon_rework.player.music.timerInit
execute as @a[tag=dragon_rework.player.musicMAD,tag=!dragon_rework.player.musicMAD.timerInit] run scoreboard players set @s rcube_dragonRework.timer.music 1
execute as @a[tag=dragon_rework.player.musicMAD,tag=!dragon_rework.player.musicMAD.timerInit] run tag @s add dragon_rework.player.musicMAD.timerInit

# Tick timers down
execute as @a[tag=dragon_rework.player.music] run scoreboard players remove @s rcube_dragonRework.timer.music 1
execute as @a[tag=dragon_rework.player.music,scores={rcube_dragonRework.timer.music=0}] at @s run function rcube:dragon_rework/music

# Reset timers
execute as @a[tag=dragon_rework.player.music,tag=!dragon_rework.player.musicMAD] if entity @s[scores={rcube_dragonRework.timer.music=..0}] run scoreboard players set @s rcube_dragonRework.timer.music 5377
execute as @a[tag=dragon_rework.player.musicMAD] if entity @s[scores={rcube_dragonRework.timer.music=..0}] run scoreboard players set @s rcube_dragonRework.timer.music 5131


# #####################
# Play
# #####################
# Tag
execute unless entity @s[tag=dragon_rework.music] run tag @s add dragon_rework.music

# General
execute if entity @s[tag=dragon_rework.music] as @a[predicate=rcube:dragon_rework/end_centre,tag=!dragon_rework.player.music] run tag @s add dragon_rework.player.music

# Phase 1
execute if entity @s[tag=dragon_rework.music,tag=!dragon_rework.music.MAD] run tag @s add dragon_rework.music.phase1

# MAD, UNHINGED
execute if entity @s[scores={rcube_dragonRework.health=126..250}] run tag @s add dragon_rework.music.MAD
execute if entity @s[tag=dragon_rework.music.MAD,tag=dragon_rework.music.phase1] run tag @s remove dragon_rework.music.phase1
execute if entity @s[tag=dragon_rework.music.MAD] as @a[predicate=rcube:dragon_rework/end_centre,tag=!dragon_rework.player.musicMAD.init] run stopsound @s music rcube:dragon_rework.phase1
execute if entity @s[tag=dragon_rework.music.MAD] as @a[predicate=rcube:dragon_rework/end_centre,tag=!dragon_rework.player.musicMAD.init] run tag @s add dragon_rework.player.musicMAD.init
execute if entity @s[tag=dragon_rework.music.MAD] as @a[predicate=rcube:dragon_rework/end_centre,tag=dragon_rework.player.musicMAD.init,tag=!dragon_rework.player.musicMAD] run tag @s add dragon_rework.player.musicMAD

# #####################
# Dead/leave fight
# #####################
execute as @a[predicate=!rcube:dragon_rework/end_centre,tag=dragon_rework.player.music.timerInit] run scoreboard players reset @s rcube_dragonRework.timer.music

# Phase 1
execute as @a[predicate=!rcube:dragon_rework/end_centre,tag=dragon_rework.player.music] run tag @s remove dragon_rework.player.music
execute as @a[predicate=!rcube:dragon_rework/end_centre,tag=dragon_rework.player.music.timerInit] run tag @s remove dragon_rework.player.music.timerInit
execute as @a[predicate=!rcube:dragon_rework/end_centre] run stopsound @s music rcube:dragon_rework.phase1

# MAD, UNHINGED
execute as @a[predicate=!rcube:dragon_rework/end_centre,tag=dragon_rework.player.musicMAD] run tag @s remove dragon_rework.player.musicMAD
execute as @a[predicate=!rcube:dragon_rework/end_centre,tag=dragon_rework.player.musicMAD.timerInit] run tag @s remove dragon_rework.player.musicMAD.timerInit
execute as @a[predicate=!rcube:dragon_rework/end_centre,tag=dragon_rework.player.musicMAD.init] run tag @s remove dragon_rework.player.musicMAD.init
execute as @a[predicate=!rcube:dragon_rework/end_centre] run stopsound @s music rcube:dragon_rework.phase2

# Logout
execute as @a[tag=dragon_rework.player.music,scores={rcube_dragonRework.logout=1..}] run tag @s add dragon_rework.player.music.relog
execute as @a[tag=dragon_rework.player.music.relog,scores={rcube_dragonRework.logout=1..}] run scoreboard players set @s rcube_dragonRework.logout 0
execute as @a[tag=dragon_rework.player.music.relog,tag=dragon_rework.player.music] run tag @s remove dragon_rework.player.music
execute as @a[tag=dragon_rework.player.music.relog,tag=dragon_rework.player.music.timerInit] run tag @s remove dragon_rework.player.music.timerInit
execute as @a[tag=dragon_rework.player.music.relog,tag=dragon_rework.player.musicMAD] run tag @s remove dragon_rework.player.musicMAD
execute as @a[tag=dragon_rework.player.music.relog,tag=dragon_rework.player.musicMAD.timerInit] run tag @s remove dragon_rework.player.musicMAD.timerInit
execute as @a[tag=dragon_rework.player.music.relog,tag=dragon_rework.player.musicMAD.init] run tag @s remove dragon_rework.player.musicMAD.init
execute as @a[tag=dragon_rework.player.music.relog] run tag @s remove dragon_rework.player.music.relog

# ##########################
# End Crystal Handling
# ##########################

# #####################
# Cage + Respawn
# #####################
# Crystal Detection
execute as @e[tag=dragon_rework.crystal] at @s if entity @e[tag=dragon_rework.crystalInit,distance=..2,type=minecraft:end_crystal] run tag @s add dragon_rework.crystal.near
execute as @e[tag=dragon_rework.crystal] at @s unless entity @e[tag=dragon_rework.crystalInit,distance=..2,type=minecraft:end_crystal] run tag @s remove dragon_rework.crystal.near

# Cage (Phase 1)
execute unless entity @s[tag=dragon_rework.dragon.crystalInit.cage] as @e[tag=dragon_rework.crystal,tag=dragon_rework.crystal.near] run tag @s add dragon_rework.crystal.cage
execute unless entity @s[tag=dragon_rework.dragon.crystalInit.cage] run tag @s add dragon_rework.dragon.crystalInit.cage

# Prepare respawn (MAD & UNHINGED)
execute if entity @s[scores={rcube_dragonRework.health=126..250}] unless entity @s[tag=dragon_rework.MAD] as @e[tag=dragon_rework.crystal,tag=!dragon_rework.crystal.near,sort=random,limit=3] run tag @s add dragon_rework.crystal.respawn
execute if entity @s[scores={rcube_dragonRework.health=0..125}] unless entity @s[tag=dragon_rework.UNHINGED] as @e[tag=dragon_rework.crystal,tag=!dragon_rework.crystal.near,sort=random,limit=9] run tag @s add dragon_rework.crystal.respawn

# Spawn crystal, prep cage
execute as @e[tag=dragon_rework.crystal.respawn] at @s run summon minecraft:end_crystal ~ ~ ~ {Tags:["dragon_rework.crystalInit"]}
  # Re-run crystal detection
  execute if entity @e[tag=dragon_rework.crystal.respawn] as @e[tag=dragon_rework.crystal] at @s if entity @e[tag=dragon_rework.crystalInit,distance=..2,type=minecraft:end_crystal] run tag @s add dragon_rework.crystal.near
  execute if entity @e[tag=dragon_rework.crystal.respawn] as @e[tag=dragon_rework.crystal] at @s unless entity @e[tag=dragon_rework.crystalInit,distance=..2,type=minecraft:end_crystal] run tag @s remove dragon_rework.crystal.near
execute if entity @e[tag=dragon_rework.crystal.respawn] as @e[tag=dragon_rework.crystal,tag=dragon_rework.crystal.near] run tag @s add dragon_rework.crystal.cage

# Make crystal arrow immune
execute as @e[tag=dragon_rework.crystalInit,tag=!dragon_rework.arrowImmune] run tag @s add dragon_rework.arrowImmune

# Cage
execute as @e[tag=dragon_rework.crystal.cage] at @s rotated ~ 0 run function rcube:dragon_rework/crystal/cage

# Clear tags
tag @e[tag=dragon_rework.crystal.respawn] remove dragon_rework.crystal.respawn
tag @e[tag=dragon_rework.crystal.cage] remove dragon_rework.crystal.cage

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

# Handle End Zombie HP increase
execute if entity @s[scores={rcube_dragonRework.health=126..250}] unless entity @s[tag=dragon_rework.MAD] as @e[tag=dragon_rework.endZombie,tag=!dragon_rework.endZombie.healthDone] run tag @s add dragon_rework.endZombie.temp
execute if entity @s[scores={rcube_dragonRework.health=..125}] unless entity @s[tag=dragon_rework.UNHINGED] as @e[tag=dragon_rework.endZombie,tag=!dragon_rework.endZombie.healthDone.UNHINGED] run tag @s add dragon_rework.endZombie.temp
execute as @e[tag=dragon_rework.endZombie.temp] store result score @s rcube_dragonRework.temp run data get entity @s Health 10000
execute as @e[tag=dragon_rework.endZombie.temp,tag=!dragon_rework.UNHINGED,tag=!dragon_rework.endZombie.healthDone] unless score @s rcube_dragonRework.temp matches 19750.. run data merge entity @s {Attributes:[{Name:"generic.max_health",Base:25}]}
execute as @e[tag=dragon_rework.endZombie.temp,tag=!dragon_rework.UNHINGED,tag=!dragon_rework.endZombie.healthDone] if score @s rcube_dragonRework.temp matches 19750.. run data merge entity @s {Health:25f,Attributes:[{Name:"generic.max_health",Base:25}]}
execute as @e[tag=dragon_rework.endZombie.temp,tag=dragon_rework.UNHINGED,tag=dragon_rework.endZombie.healthDone] unless score @s rcube_dragonRework.temp matches 24750.. run data merge entity @s {Attributes:[{Name:"generic.max_health",Base:30}]}
execute as @e[tag=dragon_rework.endZombie.temp,tag=dragon_rework.UNHINGED,tag=dragon_rework.endZombie.healthDone] if score @s rcube_dragonRework.temp matches 24750.. run data merge entity @s {Health:30f,Attributes:[{Name:"generic.max_health",Base:30}]}
execute as @e[tag=dragon_rework.endZombie.temp,tag=dragon_rework.UNHINGED,tag=!dragon_rework.endZombie.healthDone] unless score @s rcube_dragonRework.temp matches 19750.. run data merge entity @s {Attributes:[{Name:"generic.max_health",Base:30}]}
execute as @e[tag=dragon_rework.endZombie.temp,tag=dragon_rework.UNHINGED,tag=!dragon_rework.endZombie.healthDone] if score @s rcube_dragonRework.temp matches 19750.. run data merge entity @s {Health:30f,Attributes:[{Name:"generic.max_health",Base:30}]}
execute as @e[tag=dragon_rework.endZombie.temp] run scoreboard players reset @s rcube_dragonRework.temp
execute as @e[tag=dragon_rework.endZombie.temp] run tag @s add dragon_rework.endZombie.healthDone
execute as @e[tag=dragon_rework.endZombie.temp] if entity @s[tag=dragon_rework.UNHINGED] run tag @s add dragon_rework.endZombie.healthDone.UNHINGED
execute as @e[tag=dragon_rework.endZombie.temp] run tag @s remove dragon_rework.endZombie.temp

# Handle becoming MAD
execute if entity @s[scores={rcube_dragonRework.health=126..250}] unless entity @s[tag=dragon_rework.MAD] run function rcube:dragon_rework/attacks/miniboss/summon
execute if entity @s[scores={rcube_dragonRework.health=126..250}] unless entity @s[tag=dragon_rework.MAD] run scoreboard players reset Explosion rcube_dragonRework.store
execute if entity @s[scores={rcube_dragonRework.health=126..250}] unless entity @s[tag=dragon_rework.MAD] run function rcube:dragon_rework/explosion
execute if entity @s[scores={rcube_dragonRework.health=126..250}] unless entity @s[tag=dragon_rework.MAD] run tag @s add dragon_rework.MAD
execute if entity @s[tag=dragon_rework.MAD,tag=!dragon_rework.UNHINGED] at @s run particle crit ~ ~ ~ 3 3 3 1 10 force

# Handle becoming UNHINGED
execute if entity @s[scores={rcube_dragonRework.health=..125}] unless entity @s[tag=dragon_rework.UNHINGED] run tag @s add dragon_rework.UNHINGED
execute if entity @s[tag=dragon_rework.UNHINGED] at @s run particle portal ~ ~ ~ 3 3 3 1 50 force

# Handle invunerable
execute if entity @e[tag=dragon_rework.miniboss] run data modify entity @s Invulnerable set value true
execute at @s if entity @e[tag=dragon_rework.miniboss] run particle enchanted_hit ~ ~ ~ 3 3 3 1 25 force
execute unless entity @e[tag=dragon_rework.miniboss] run data modify entity @s Invulnerable set value false

# Handle Miniboss Death
execute unless entity @e[tag=dragon_rework.miniboss] if entity @e[tag=dragon_rework.miniboss.loc,tag=!dragon_rework.miniboss.dead] as @e[type=minecraft:end_crystal,tag=dragon_rework.crystal.invulnerable] run data modify entity @s Invulnerable set value false
execute unless entity @e[tag=dragon_rework.miniboss] if entity @e[tag=dragon_rework.miniboss.loc,tag=!dragon_rework.miniboss.dead] as @e[tag=dragon_rework.crystal.invulnerable] run tag @s remove dragon_rework.crystal.invulnerable
execute unless entity @e[tag=dragon_rework.miniboss] if entity @e[tag=dragon_rework.miniboss.loc,tag=!dragon_rework.miniboss.dead] run kill @e[tag=dragon_rework.miniboss.minion]
execute unless entity @e[tag=dragon_rework.miniboss] as @e[tag=dragon_rework.miniboss.loc,tag=!dragon_rework.miniboss.dead] run tag @s add dragon_rework.miniboss.dead
execute unless entity @e[tag=dragon_rework.miniboss] if entity @e[tag=dragon_rework.miniboss.loc] run schedule function rcube:dragon_rework/attacks/miniboss/death 30t append

# #####################
# Bed + Anchor Removal
# #####################
# Remove beds
execute store success score success.bed rcube_dragonRework.store run fill ~8 ~8 ~8 ~-8 ~-8 ~-8 air replace #minecraft:beds
execute if score success.bed rcube_dragonRework.store matches 1 run title @a[distance=..20] times 5 20 10
execute if score success.bed rcube_dragonRework.store matches 1 run title @a[distance=..20] title ""
execute if score success.bed rcube_dragonRework.store matches 1 run title @a[distance=..20] subtitle {"text":"All beds near dragon will be removed","color":"red"}
execute if score success.bed rcube_dragonRework.store matches 1 run scoreboard players set success.bed rcube_dragonRework.store 0

# Remove anchors
execute store success score success.respawn_anchor rcube_dragonRework.store run fill ~8 ~8 ~8 ~-8 ~-8 ~-8 air replace minecraft:respawn_anchor
execute if score success.respawn_anchor rcube_dragonRework.store matches 1 run title @a[distance=..20] times 5 20 10
execute if score success.respawn_anchor rcube_dragonRework.store matches 1 run title @a[distance=..20] title ""
execute if score success.respawn_anchor rcube_dragonRework.store matches 1 run title @a[distance=..20] subtitle {"text":"All respawn anchors near dragon will be removed","color":"red"}
execute if score success.respawn_anchor rcube_dragonRework.store matches 1 run scoreboard players set success.respawn_anchor rcube_dragonRework.store 0
