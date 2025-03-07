# Made by: @rcube.
#
# Called By: #minecraft:tick
# Ran as: Server

# Save UUID
execute as @e[tag=dragon_rework.arrowDodge] unless entity @s[tag=dragon_rework.storedUUID] run function rcube:dragon_rework/uuid
execute as @a[tag=!dragon_rework.storedUUID] run function rcube:dragon_rework/uuid
execute as @e[type=minecraft:arrow,nbt={inGround:false}] run function rcube:dragon_rework/uuid
execute as @e[type=minecraft:ender_dragon,tag=!dragon_rework.storedUUID] run function rcube:dragon_rework/uuid

# Register End Crystal locations
execute as @e[type=minecraft:end_crystal,tag=!dragon_rework.crystalInit,predicate=rcube:dragon_rework/end_centre] at @s unless entity @e[tag=dragon_rework.dragonInit] unless data storage rcube:dragon_rework root{previously_defeated:true} unless entity @e[tag=dragon_rework.monumentMarker,distance=..5] at @s run summon marker ~ ~ ~ {Tags:["dragon_rework.crystal"]}
execute as @e[type=minecraft:end_crystal,tag=!dragon_rework.crystalInit,predicate=rcube:dragon_rework/end_centre] at @s unless entity @e[tag=dragon_rework.dragonInit] unless entity @e[tag=dragon_rework.crystal] if data storage rcube:dragon_rework root{previously_defeated:true} unless entity @e[tag=dragon_rework.monumentMarker,distance=..5] at @s run summon marker ~ ~ ~ {Tags:["dragon_rework.crystal"]}
execute as @e[type=minecraft:end_crystal,tag=!dragon_rework.crystalInit,predicate=rcube:dragon_rework/end_centre] at @s unless entity @e[tag=dragon_rework.dragonInit] if entity @e[tag=dragon_rework.crystal,distance=..1] run tag @s add dragon_rework.crystalInit

# Dragon Init
execute if entity @e[type=minecraft:ender_dragon,tag=!dragon_rework.dragonInit] run data modify storage rcube:dragon_rework root.alive set value true
scoreboard players set @e[type=minecraft:ender_dragon,tag=!dragon_rework.dragonInit] rcube_dragonRework.timer.attacks 800
scoreboard players set @e[type=minecraft:ender_dragon,tag=!dragon_rework.dragonInit] rcube_dragonRework.phase 1
execute as @e[type=minecraft:ender_dragon,tag=!dragon_rework.dragonInit] run data merge entity @s {Health:500f,attributes:[{id:"max_health",base:500}]}
tag @e[type=minecraft:ender_dragon,tag=!dragon_rework.dragonInit] add damage_taken.check_damage
tag @e[type=minecraft:ender_dragon,tag=!dragon_rework.dragonInit] add damage_taken.damage.total
tag @e[type=minecraft:ender_dragon,tag=!dragon_rework.dragonInit] add damage_taken.health.max
tag @e[type=minecraft:ender_dragon,tag=!dragon_rework.dragonInit] add dragon_rework.dragonInit
execute as @e[type=minecraft:ender_dragon,tag=dragon_rework.dragonInit] at @s in minecraft:the_end run function rcube:dragon_rework/dragon

# Teleport mobs that spawn in ground up
execute as @e[tag=dragon_rework.floor.spawn] at @s unless block ~ ~ ~ air run tp ~ ~1 ~
# Prevent dodging arrows into ground
execute as @e[tag=dragon_rework.arrowDodge,tag=!dragon_rework.floor.spawn] at @s unless block ~ ~ ~ air run tp ~ ~1 ~

# Arrow Management
# Tag management entities
execute as @e[tag=dragon_rework.arrowDodge,tag=!dragon_rework.arrowManage] run tag @s add dragon_rework.arrowManage
execute as @e[tag=dragon_rework.arrowImmune,tag=!dragon_rework.arrowManage] run tag @s add dragon_rework.arrowManage
# Store arrow UUID
execute as @e[tag=dragon_rework.arrowManage] if score .arrow rcube_dragonRework.UUID0 = @s rcube_dragonRework.UUID0 if score .arrow rcube_dragonRework.UUID1 = @s rcube_dragonRework.UUID1 if score .arrow rcube_dragonRework.UUID2 = @s rcube_dragonRework.UUID2 if score .arrow rcube_dragonRework.UUID3 = @s rcube_dragonRework.UUID3 run tag @s add dragon_rework.arrowManage.ownArrow
# Store arrow location if arrow dodge
execute as @e[tag=dragon_rework.arrowManage,tag=!dragon_rework.arrowManage.ownArrow] at @s if entity @e[type=minecraft:arrow,distance=..3.5,nbt={inGround:false}] at @e[type=minecraft:arrow,distance=..3.5,nbt={inGround:false}] run summon marker ~ ~ ~ {Tags:["dragon_rework.arrowDodge.arrow"]}
# Remove Arrow
execute as @e[tag=dragon_rework.arrowManage,tag=!dragon_rework.arrowManage.ownArrow] at @s run kill @e[type=minecraft:arrow,distance=..3.5,nbt={inGround:false}]
# Randomise Direction
execute as @e[tag=dragon_rework.arrowDodge,tag=!dragon_rework.arrowManage.ownArrow] at @s if entity @e[tag=dragon_rework.arrowDodge.arrow,distance=..3.5,type=minecraft:marker] run particle minecraft:reverse_portal ~ ~ ~ 0 0.125 0 0.2 500 normal
execute if predicate rcube:dragon_rework/rng run scoreboard players set RNG.arrow rcube_dragonRework.store 1
execute unless predicate rcube:dragon_rework/rng run scoreboard players set RNG.arrow rcube_dragonRework.store 0
execute if score RNG.arrow rcube_dragonRework.store matches 0 as @e[tag=dragon_rework.arrowDodge,tag=!dragon_rework.arrowManage.ownArrow] at @s if entity @e[tag=dragon_rework.arrowDodge.arrow,distance=..3.5,type=minecraft:marker] run tp ^3 ^ ^-3
execute if score RNG.arrow rcube_dragonRework.store matches 1 as @e[tag=dragon_rework.arrowDodge,tag=!dragon_rework.arrowManage.ownArrow] at @s if entity @e[tag=dragon_rework.arrowDodge.arrow,distance=..3.5,type=minecraft:marker] run tp ^-3 ^ ^3
# Cleanup
kill @e[tag=dragon_rework.arrowDodge.arrow,type=minecraft:marker]
execute as @e[tag=dragon_rework.arrowDodge,tag=dragon_rework.arrowManage.ownArrow] unless score .arrow rcube_dragonRework.UUID0 = @s rcube_dragonRework.UUID0 unless score .arrow rcube_dragonRework.UUID1 = @s rcube_dragonRework.UUID1 unless score .arrow rcube_dragonRework.UUID2 = @s rcube_dragonRework.UUID2 unless score .arrow rcube_dragonRework.UUID3 = @s rcube_dragonRework.UUID3 run tag @s remove dragon_rework.arrowManage.ownArrow

# Handle Death
# Music
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] if data storage rcube:dragon_rework root{alive:true} run scoreboard players reset * rcube_dragonRework.timer.music
execute unless entity @e[tag=dragon_rework.music,type=minecraft:ender_dragon] if data storage rcube:dragon_rework root{alive:true} run stopsound @a music rcube:dragon_rework.phase1
execute unless entity @e[tag=dragon_rework.music.MAD,type=minecraft:ender_dragon] if data storage rcube:dragon_rework root{alive:true} run stopsound @a music rcube:dragon_rework.phase2
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] if data storage rcube:dragon_rework root{alive:true} run tag @a[tag=dragon_rework.player.music] remove dragon_rework.player.music
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] if data storage rcube:dragon_rework root{alive:true} run tag @a[tag=dragon_rework.player.music.timerInit] remove dragon_rework.player.music.timerInit
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] if data storage rcube:dragon_rework root{alive:true} run tag @a[tag=dragon_rework.player.musicMAD] remove dragon_rework.player.musicMAD
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] if data storage rcube:dragon_rework root{alive:true} run tag @a[tag=dragon_rework.player.musicMAD.init] remove dragon_rework.player.musicMAD.init
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] if data storage rcube:dragon_rework root{alive:true} run tag @a[tag=dragon_rework.player.musicMAD.timerInit] remove dragon_rework.player.musicMAD.timerInit
# Remove left-over entities
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] if data storage rcube:dragon_rework root{alive:true} run kill @e[tag=dragon_rework.remove]
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] if data storage rcube:dragon_rework root{alive:true} run kill @e[type=minecraft:end_crystal,tag=!dragon_rework.crystalInit,predicate=rcube:dragon_rework/end_centre]
# Crystal Tags
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] if data storage rcube:dragon_rework root{alive:true} run tag @e[tag=dragon_rework.crystalInit,type=minecraft:end_crystal] remove dragon_rework.crystalInit
# Reset Scoreboard
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] if data storage rcube:dragon_rework root{alive:true} run scoreboard players reset * rcube_dragonRework.health
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] if data storage rcube:dragon_rework root{alive:true} run scoreboard players reset * rcube_dragonRework.timer.music
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] if data storage rcube:dragon_rework root{alive:true} run scoreboard players reset * rcube_dragonRework.timer.attacks
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] if data storage rcube:dragon_rework root{alive:true} run scoreboard players reset * rcube_dragonRework.phase
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] if data storage rcube:dragon_rework root{alive:true} run scoreboard players reset * rcube_dragonRework.store
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] if data storage rcube:dragon_rework root{alive:true} run scoreboard players reset * rcube_dragonRework.UUID0
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] if data storage rcube:dragon_rework root{alive:true} run scoreboard players reset * rcube_dragonRework.UUID1
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] if data storage rcube:dragon_rework root{alive:true} run scoreboard players reset * rcube_dragonRework.UUID2
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] if data storage rcube:dragon_rework root{alive:true} run scoreboard players reset * rcube_dragonRework.UUID3
# Set state to dead
execute unless entity @e[tag=dragon_rework.dragonInit,type=minecraft:ender_dragon] if data storage rcube:dragon_rework root{alive:true} run data modify storage rcube:dragon_rework root.alive set value false

# Miniboss Bossbars
execute as @e[tag=dragon_rework.miniboss] at @s store result bossbar rcube:dragon_rework.miniboss value run data get entity @s Health
execute unless entity @e[tag=dragon_rework.miniboss] run bossbar set rcube:dragon_rework.miniboss players
execute if entity @e[tag=dragon_rework.miniboss] run bossbar set rcube:dragon_rework.miniboss players @a[predicate=rcube:dragon_rework/end_centre]
execute if entity @e[tag=dragon_rework.miniboss] run bossbar set rcube:dragon_rework.miniboss visible true
execute unless entity @e[tag=dragon_rework.miniboss] run bossbar set rcube:dragon_rework.miniboss visible false

# Tick Miniboss
execute as @e[tag=dragon_rework.miniboss] at @s run function rcube:dragon_rework/attacks/miniboss/tick

# End Monument Marker needed. Does it exist? If not, spawn one in, and teleport it down
execute as @e[tag=dragon_rework.monumentMarker,type=minecraft:marker] at @s if block ~ ~-1 ~ air run tp ~ ~-1 ~

# Dimensional Ripper Item - cooldownn
execute as @a if score @s rcube_dragonRework.item.cooldown matches 1.. run scoreboard players remove @s rcube_dragonRework.item.cooldown 1
execute as @a if score @s rcube_dragonRework.item.cooldown matches ..0 run scoreboard players reset @s rcube_dragonRework.item.cooldown
execute as @a if score @s rcube_dragonRework.item.cooldown matches 1.. run scoreboard players remove @s rcube_dragonRework.item.cooldown.msg 1
execute as @a if score @s rcube_dragonRework.item.cooldown matches ..0 run scoreboard players reset @s rcube_dragonRework.item.cooldown.msg
execute as @a[scores={rcube_dragonRework.item.cooldown=1..},advancements={rcube:use_dimension_ripper=true}] unless score @s rcube_dragonRework.item.cooldown.msg matches 1.. run function rcube:dragon_rework/dimension_ripper/cooldown

# Dimensional Ripper Item - wait (break portal)
execute as @e[type=marker,tag=rcube_item.dimensional_ripper.break_loc] run scoreboard players remove @s rcube_dragonRework.item.break_portal 1
execute as @e[type=marker,tag=rcube_item.dimensional_ripper.break_loc,scores={rcube_dragonRework.item.break_portal=..0}] at @s run function rcube:dragon_rework/dimension_ripper/break/portal

# Dimensional Ripper Item - run
execute as @a if score @s rcube_dragonRework.item matches -2147483648..2147483647 unless items entity @s weapon poisonous_potato[custom_data~{"rcube":{"item":{"id":"rcube:dimension_ripper"}}}] run scoreboard players reset @s rcube_dragonRework.item
execute as @a if score @s rcube_dragonRework.item matches -2147483648..2147483647 at @s unless function rcube:dragon_rework/dimension_ripper/ray/start_ray run scoreboard players reset @s rcube_dragonRework.item
execute as @a if score @s rcube_dragonRework.item matches -2147483648..2147483647 if entity @s[advancements={rcube:use_dimension_ripper=false}] run scoreboard players reset @s rcube_dragonRework.item
execute as @a unless score @s rcube_dragonRework.item.cooldown matches 1.. if items entity @s weapon poisonous_potato[custom_data~{"rcube":{"item":{"id":"rcube:dimension_ripper"}}}] at @s if function rcube:dragon_rework/dimension_ripper/ray/start_ray if entity @s[advancements={rcube:use_dimension_ripper=true}] run function rcube:dragon_rework/dimension_ripper/use
execute as @a[advancements={rcube:use_dimension_ripper=true}] run advancement revoke @s only rcube:use_dimension_ripper

# Loop tick
schedule function rcube:dragon_rework/tick 1t replace
