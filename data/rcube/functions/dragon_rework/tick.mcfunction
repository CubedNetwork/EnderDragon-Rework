# Made by: @rcube.
#
# Called By: #minecraft:tick
# Ran as: Server

# Save UUID
execute as @e[tag=dragon_rework.arrowDodge] unless entity @s[tag=dragon_rework.storedUUID] run function rcube:dragon_rework/uuid
execute as @a[tag=!dragon_rework.storedUUID] run function rcube:dragon_rework/uuid
execute as @e[type=minecraft:arrow,nbt={inGround:false}] run function rcube:dragon_rework/uuid

# Register End Crystal locations
execute as @e[type=minecraft:end_crystal,tag=!dragon_rework.crystalInit,predicate=rcube:dragon_rework/end_centre] unless entity @e[tag=dragon_rework.dragonInit] at @s run summon marker ~ ~ ~ {Tags:["dragon_rework.crystal", "dragon_rework.remove"]}
execute as @e[type=minecraft:end_crystal,tag=!dragon_rework.crystalInit,predicate=rcube:dragon_rework/end_centre] unless entity @e[tag=dragon_rework.dragonInit] run tag @s add dragon_rework.crystalInit

# Dragon Init
scoreboard players set @e[type=minecraft:ender_dragon,tag=!dragon_rework.dragonInit] rcube_dragonRework.timer.attacks 800
scoreboard players set @e[type=minecraft:ender_dragon,tag=!dragon_rework.dragonInit] rcube_dragonRework.phase 1
execute as @e[type=minecraft:ender_dragon,tag=!dragon_rework.dragonInit] run data merge entity @s {Health:500f,Attributes:[{Name:"generic.max_health",Base:500}]}
tag @e[type=minecraft:ender_dragon,tag=!dragon_rework.dragonInit] add dragon_rework.dragonInit
execute as @e[type=minecraft:ender_dragon,tag=dragon_rework.dragonInit] at @s in minecraft:the_end run function rcube:dragon_rework/dragon

# Teleport mobs that spawn in ground up
execute as @e[tag=dragon_rework.floor.spawn] at @s unless block ~ ~ ~ air run tp ~ ~1 ~
# Prevent dodging arrows into ground
execute as @e[tag=dragon_rework.arrowDodge,tag=!dragon_rework.floor.spawn] at @s unless block ~ ~ ~ air run tp ~ ~1 ~

# Arrow Dodging
# Store arrow UUID
execute as @e[tag=dragon_rework.arrowDodge] if score .arrow rcube_dragonRework.UUID0 = @s rcube_dragonRework.UUID0 if score .arrow rcube_dragonRework.UUID1 = @s rcube_dragonRework.UUID1 if score .arrow rcube_dragonRework.UUID2 = @s rcube_dragonRework.UUID2 if score .arrow rcube_dragonRework.UUID3 = @s rcube_dragonRework.UUID3 run tag @s add dragon_rework.arrowDodge.ownArrow
# Remove Arrow
execute as @e[tag=dragon_rework.arrowDodge,tag=!dragon_rework.arrowDodge.ownArrow] at @s if entity @e[type=minecraft:arrow,distance=..3.5,nbt={inGround:false}] at @e[type=minecraft:arrow,distance=..3.5,nbt={inGround:false}] run summon marker ~ ~ ~ {Tags:["dragon_rework.arrowDodge.arrow"]}
execute as @e[tag=dragon_rework.arrowDodge,tag=!dragon_rework.arrowDodge.ownArrow] at @s run kill @e[type=minecraft:arrow,distance=..3.5,nbt={inGround:false}]
execute as @e[tag=dragon_rework.arrowDodge,tag=!dragon_rework.arrowDodge.ownArrow] at @s if entity @e[tag=dragon_rework.arrowDodge.arrow,distance=..3.5,type=minecraft:marker] run particle minecraft:reverse_portal ~ ~ ~ 0 0.125 0 0.2 500 normal
# Randomise Direction
execute if predicate rcube:dragon_rework/rng run scoreboard players set RNG.arrow rcube_dragonRework.store 1
execute unless predicate rcube:dragon_rework/rng run scoreboard players set RNG.arrow rcube_dragonRework.store 0
execute if score RNG.arrow rcube_dragonRework.store matches 0 as @e[tag=dragon_rework.arrowDodge,tag=!dragon_rework.arrowDodge.ownArrow] at @s if entity @e[tag=dragon_rework.arrowDodge.arrow,distance=..3.5,type=minecraft:marker] run tp ^3 ^ ^-3
execute if score RNG.arrow rcube_dragonRework.store matches 1 as @e[tag=dragon_rework.arrowDodge,tag=!dragon_rework.arrowDodge.ownArrow] at @s if entity @e[tag=dragon_rework.arrowDodge.arrow,distance=..3.5,type=minecraft:marker] run tp ^-3 ^ ^3
# Cleanup
kill @e[tag=dragon_rework.arrowDodge.arrow,type=minecraft:marker]
execute as @e[tag=dragon_rework.arrowDodge,tag=dragon_rework.arrowDodge.ownArrow] unless score .arrow rcube_dragonRework.UUID0 = @s rcube_dragonRework.UUID0 unless score .arrow rcube_dragonRework.UUID1 = @s rcube_dragonRework.UUID1 unless score .arrow rcube_dragonRework.UUID2 = @s rcube_dragonRework.UUID2 unless score .arrow rcube_dragonRework.UUID3 = @s rcube_dragonRework.UUID3 run tag @s remove dragon_rework.arrowDodge.ownArrow

# Handle Death
# Music
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] run scoreboard players reset * rcube_dragonRework.timer.music
execute unless entity @e[tag=dragon_rework.music,type=minecraft:ender_dragon] run stopsound @a record rcube:dragon_rework.phase1
execute unless entity @e[tag=dragon_rework.music.MAD,type=minecraft:ender_dragon] run stopsound @a record rcube:dragon_rework.phase2
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] run tag @a[tag=dragon_rework.player.music] remove dragon_rework.player.music
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] run tag @a[tag=dragon_rework.player.music.timerInit] remove dragon_rework.player.music.timerInit
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] run tag @a[tag=dragon_rework.player.musicMAD] remove dragon_rework.player.musicMAD
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] run tag @a[tag=dragon_rework.player.musicMAD.init] remove dragon_rework.player.musicMAD.init
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] run tag @a[tag=dragon_rework.player.musicMAD.timerInit] remove dragon_rework.player.musicMAD.timerInit
# Remove left-over entities
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] run kill @e[tag=dragon_rework.remove]
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] run kill @e[type=minecraft:end_crystal,tag=!dragon_rework.crystalInit,predicate=rcube:dragon_rework/end_centre]
# Crystal Tags
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] run tag @e[tag=dragon_rework.crystalInit,type=minecraft:end_crystal] remove dragon_rework.crystalInit
# Reset Scoreboard
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] run scoreboard players reset * rcube_dragonRework.dragon.health
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] run scoreboard players reset * rcube_dragonRework.timer.music
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] run scoreboard players reset * rcube_dragonRework.timer.attacks
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] run scoreboard players reset * rcube_dragonRework.phase
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] run scoreboard players reset * rcube_dragonRework.store
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] run scoreboard players reset * rcube_dragonRework.UUID0
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] run scoreboard players reset * rcube_dragonRework.UUID1
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] run scoreboard players reset * rcube_dragonRework.UUID2
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] run scoreboard players reset * rcube_dragonRework.UUID3

# Handle Miniboss Death
execute unless entity @e[tag=dragon_rework.miniboss] run kill @e[tag=dragon_rework.miniboss.minion]

# Miniboss Bossbars
execute as @e[tag=dragon_rework.miniboss] at @s store result bossbar rcube:dragon_rework.miniboss value run data get entity @s Health
execute if entity @e[tag=dragon_rework.miniboss] run bossbar set rcube:dragon_rework.miniboss visible true
execute unless entity @e[tag=dragon_rework.miniboss] run bossbar set rcube:dragon_rework.miniboss visible false
bossbar set rcube:dragon_rework.miniboss players @a

# Tick Miniboss
execute as @e[tag=dragon_rework.miniboss,tag=!dragon_rework.miniboss.init] at @s run scoreboard players set @s rcube_dragonRework.timer.attacks 900
execute as @e[tag=dragon_rework.miniboss,tag=!dragon_rework.miniboss.init] run tag @s add dragon_rework.miniboss.init
execute as @e[tag=dragon_rework.miniboss] at @s run function rcube:dragon_rework/attacks/mad/miniboss/tick

# End Monument Marker needed. Does it exist? If not, spawn one in, and teleport it down
execute as @e[tag=dragon_rework.monumentMarker,type=minecraft:marker] at @s if block ~ ~-1 ~ air run tp ~ ~-1 ~