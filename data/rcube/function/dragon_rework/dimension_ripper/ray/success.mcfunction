# Made by: @rcube.
# Raycast sucess
# 
# Called By: rcube:dragon_rework/dimension_ripper/ray/ray
# Ran as: Entity, Player

# Set hit
scoreboard players set #hit rcube_dragonRework.item 1

## Only check
# Look, no press
execute unless score #break rcube_dragonRework.item matches 1 unless score @s rcube_dragonRework.item matches -2147483648..2147483647 align xyz run particle minecraft:crit ~.5 ~1.5 ~.5 0 0.1 0 0 2 force @s
# Holding
execute unless score #break rcube_dragonRework.item matches 1 if score @s rcube_dragonRework.item matches -2147483648..2147483647 align xyz run particle minecraft:enchanted_hit ~.5 ~1.5 ~.5 0 0.1 0 0 2 force

## Break
execute if score #break rcube_dragonRework.item matches 1
execute if score #break rcube_dragonRework.item matches 1 if block ~ ~ ~ end_portal_frame[eye=true] run scoreboard players set #eye rcube_dragonRework.item 1
# North
execute if score #break rcube_dragonRework.item matches 1 if block ~ ~ ~ end_portal_frame[facing=north] run scoreboard players set #north rcube_dragonRework.item 1
execute if score #break rcube_dragonRework.item matches 1 if score #north rcube_dragonRework.item matches 1 align xyz run summon marker ~ ~ ~ {Tags:["rcube_item.dimensional_ripper.break_loc","rcube_item.dimensional_ripper.break_loc.temp"],Rotation:[180f,0f]}
execute if score #break rcube_dragonRework.item matches 1 if score #north rcube_dragonRework.item matches 1 run scoreboard players set #spawned rcube_dragonRework.item 1
# South
execute if score #break rcube_dragonRework.item matches 1 unless score #spawned rcube_dragonRework.item matches 1 if block ~ ~ ~ end_portal_frame[facing=south] run scoreboard players set #south rcube_dragonRework.item 1
execute if score #break rcube_dragonRework.item matches 1 if score #south rcube_dragonRework.item matches 1 align xyz run summon marker ~ ~ ~ {Tags:["rcube_item.dimensional_ripper.break_loc","rcube_item.dimensional_ripper.break_loc.temp"],Rotation:[0f,0f]}
execute if score #break rcube_dragonRework.item matches 1 if score #south rcube_dragonRework.item matches 1 run scoreboard players set #spawned rcube_dragonRework.item 1
# East
execute if score #break rcube_dragonRework.item matches 1 unless score #spawned rcube_dragonRework.item matches 1 if block ~ ~ ~ end_portal_frame[facing=east] run scoreboard players set #east rcube_dragonRework.item 1
execute if score #break rcube_dragonRework.item matches 1 if score #east rcube_dragonRework.item matches 1 align xyz run summon marker ~ ~ ~ {Tags:["rcube_item.dimensional_ripper.break_loc","rcube_item.dimensional_ripper.break_loc.temp"],Rotation:[-90f,0f]}
execute if score #break rcube_dragonRework.item matches 1 if score #east rcube_dragonRework.item matches 1 run scoreboard players set #spawned rcube_dragonRework.item 1
# West
execute if score #break rcube_dragonRework.item matches 1 unless score #spawned rcube_dragonRework.item matches 1 if block ~ ~ ~ end_portal_frame[facing=west] run scoreboard players set #west rcube_dragonRework.item 1
execute if score #break rcube_dragonRework.item matches 1 if score #west rcube_dragonRework.item matches 1 align xyz run summon marker ~ ~ ~ {Tags:["rcube_item.dimensional_ripper.break_loc","rcube_item.dimensional_ripper.break_loc.temp"],Rotation:[90f,0f]}
execute if score #break rcube_dragonRework.item matches 1 if score #west rcube_dragonRework.item matches 1 run scoreboard players set #spawned rcube_dragonRework.item 1
# Check for portal, keep marker if portal
execute if score #break rcube_dragonRework.item matches 1 align xyz at @e[type=marker,tag=rcube_item.dimensional_ripper.break_loc.temp,distance=0..0.00000000001,sort=nearest,limit=1] if block ^ ^ ^1 end_portal run scoreboard players set #portal rcube_dragonRework.item 1
execute if score #break rcube_dragonRework.item matches 1 unless score #portal rcube_dragonRework.item matches 1 align xyz run kill @e[type=marker,tag=rcube_item.dimensional_ripper.break_loc.temp,distance=0..0.00000000001,sort=nearest,limit=1]
# Break end stone frame
execute if score #break rcube_dragonRework.item matches 1 run setblock ~ ~ ~ air destroy

# Cleanup
execute if score #break rcube_dragonRework.item matches 1 run scoreboard players reset #portal rcube_dragonRework.item
execute if score #break rcube_dragonRework.item matches 1 run scoreboard players reset #spawned rcube_dragonRework.item
execute if score #break rcube_dragonRework.item matches 1 if score #north rcube_dragonRework.item matches 1 run scoreboard players reset #north rcube_dragonRework.item
execute if score #break rcube_dragonRework.item matches 1 if score #south rcube_dragonRework.item matches 1 run scoreboard players reset #south rcube_dragonRework.item
execute if score #break rcube_dragonRework.item matches 1 if score #east rcube_dragonRework.item matches 1 run scoreboard players reset #east rcube_dragonRework.item
execute if score #break rcube_dragonRework.item matches 1 if score #west rcube_dragonRework.item matches 1 run scoreboard players reset #west rcube_dragonRework.item
