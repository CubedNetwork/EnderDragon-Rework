# Made by: @rcube.
# Give everyone at end centre advancement
# Send dragon down message
# Dependencies:
# RCube API
#   - 'damage_dealt'
#   - 'player_name'
#   - 'centre_string'
#   - 'scoreboard_rank'
#
# Called By: rcube:dragon_rework/kill_dragon (ADVANCEMENT)
# Ran as: Entity, Player

# TODO: Recentre text using api, then preferably paste fixed version here.

execute as @a[advancements={rcube:dragon_rework/kill_dragon=true}] run tellraw @a[predicate=rcube:dragon_rework/end_centre] ""
execute as @a[advancements={rcube:dragon_rework/kill_dragon=true}] run tellraw @a[predicate=rcube:dragon_rework/end_centre] [{"text":"-----------------------------------------------------","strikethrough":true,"color":"green"}]
execute as @a[advancements={rcube:dragon_rework/kill_dragon=true}] run tellraw @a[predicate=rcube:dragon_rework/end_centre] [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," ",{"text":"ENDER DRAGON DOWN!","color":"gold","bold":true}]
execute as @a[advancements={rcube:dragon_rework/kill_dragon=true}] run tellraw @a[predicate=rcube:dragon_rework/end_centre] ""

execute as @a[advancements={rcube:dragon_rework/kill_dragon=true}] run tellraw @a[predicate=rcube:dragon_rework/end_centre,advancements={rcube:dragon_rework/kill_dragon=false}] [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," ",{"selector":"@s","color":"dark_gray"},{"text":" dealt the final blow.","color":"gray"}]
execute as @a[advancements={rcube:dragon_rework/kill_dragon=true}] run tellraw @s [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," ",{"text": "You","color": "green"},{"text": " dealt the final blow.","color": "gray"}]

# This part utilises module 'damage_dealt' from RCube-API. If has never been installed, skip
execute if data storage rcube:api/damage_dealt {installed:true} run tellraw @a ""
execute if data storage rcube:api/damage_dealt {installed:true} run tellraw @a ["centre this ",{"text": "1st Damager","color": "yellow","bold": true},{"text": " - ","color": "gray"},{"selector": "@a[tag=dragon_rework.player.damage.pos1,limit=1]"},{"text": " - ","color": "gray"}]
execute if data storage rcube:api/damage_dealt {installed:true} run tellraw @a ["centre this ",{"text": "2nd Damager","color": "gold","bold": true},{"text": " - ","color": "gray"},{"selector": "@a[tag=dragon_rework.player.damage.pos2,limit=1]"},{"text": " - ","color": "gray"}]
execute if data storage rcube:api/damage_dealt {installed:true} run tellraw @a ["centre this ",{"text": "3rd Damager","color": "red","bold": true},{"text": " - ","color": "gray"},{"selector": "@a[tag=dragon_rework.player.damage.pos3,limit=1]"},{"text": " - ","color": "gray"}]

execute as @a[advancements={rcube:dragon_rework/kill_dragon=true}] run tellraw @a[predicate=rcube:dragon_rework/end_centre] ""

# First time being defeated
execute as @a[advancements={rcube:dragon_rework/kill_dragon=true}] unless data storage rcube:dragon_rework {previously_defeated:true} run tellraw @a[predicate=rcube:dragon_rework/end_centre] [" "," "," "," "," "," "," "," "," ",{"text":"This boss hasn't been killed before, you are","color":"yellow"}]
execute as @a[advancements={rcube:dragon_rework/kill_dragon=true}] unless data storage rcube:dragon_rework {previously_defeated:true} run tellraw @a[predicate=rcube:dragon_rework/end_centre] [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," ",{"text":"eligible for the ","color":"yellow"},{"text":"[","color":"dark_purple","hoverEvent":{"action":"show_item","contents":{"id":"minecraft:dragon_egg","count":1}}},{"text":"Dragon Egg","color":"light_purple","hoverEvent":{"action":"show_item","contents":{"id":"minecraft:dragon_egg","count":1}}},{"text":"]","color":"dark_purple","color":"dark_purple","hoverEvent":{"action":"show_item","contents":{"id":"minecraft:dragon_egg","count":1}}}]

# Has been defeated previously
execute as @a[advancements={rcube:dragon_rework/kill_dragon=true}] if data storage rcube:dragon_rework {previously_defeated:true} run tellraw @a[predicate=rcube:dragon_rework/end_centre] [" "," "," "," "," "," "," "," "," ",{"text":"This boss has been killed before, you are not","color":"red"}]
execute as @a[advancements={rcube:dragon_rework/kill_dragon=true}] if data storage rcube:dragon_rework {previously_defeated:true} run tellraw @a[predicate=rcube:dragon_rework/end_centre] [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," ",{"text":"eligible for the ","color":"red"},{"text":"[","color":"dark_purple","hoverEvent":{"action":"show_item","contents":{"id":"minecraft:dragon_egg","count":1}}},{"text":"Dragon Egg","color":"light_purple","hoverEvent":{"action":"show_item","contents":{"id":"minecraft:dragon_egg","count":1}}},{"text":"]","color":"dark_purple","color":"dark_purple","hoverEvent":{"action":"show_item","contents":{"id":"minecraft:dragon_egg","count":1}}}]

execute as @a[advancements={rcube:dragon_rework/kill_dragon=true}] run tellraw @a[predicate=rcube:dragon_rework/end_centre] ""
execute as @a[advancements={rcube:dragon_rework/kill_dragon=true}] run tellraw @a[predicate=rcube:dragon_rework/end_centre] [{"text":"-----------------------------------------------------","strikethrough":true,"color":"green"}]
execute as @a[advancements={rcube:dragon_rework/kill_dragon=true}] run tellraw @a[predicate=rcube:dragon_rework/end_centre] ""

# Remove tags (PHASE OUT IN FAVOUR OF JUST LOOKING AT SCOREBOARD)
tag @a[tag=dragon_rework.player.damage.pos1] remove dragon_rework.player.damage.pos1
tag @a[tag=dragon_rework.player.damage.pos2] remove dragon_rework.player.damage.pos2
tag @a[tag=dragon_rework.player.damage.pos3] remove dragon_rework.player.damage.pos3

# Grant advancement
execute as @a[predicate=rcube:dragon_rework/end_centre,advancements={minecraft:end/kill_dragon=false}] run advancement grant @s[gamemode=!spectator] only minecraft:end/kill_dragon

# Save data (has been defeated)
execute unless data storage rcube:dragon_rework {previously_defeated:true} run data merge storage rcube:dragon_rework {previously_defeated:true}

# Revoke trigger advancement
advancement revoke @a[advancements={rcube:dragon_rework/kill_dragon=true}] only rcube:dragon_rework/kill_dragon