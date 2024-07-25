# Made by: @rcube.
# Give everyone at end centre advancement
# Send dragon down message
#
# Called By: rcube:dragon_rework/kill_dragon (ADVANCEMENT)
# Ran as: Entity, Player

execute as @a[advancements={rcube:dragon_rework/kill_dragon=true}] run tellraw @a[predicate=rcube:dragon_rework/end_centre] ""
execute as @a[advancements={rcube:dragon_rework/kill_dragon=true}] run tellraw @a[predicate=rcube:dragon_rework/end_centre] [{"text":"-----------------------------------------------------","strikethrough":true,"color":"green"}]
execute as @a[advancements={rcube:dragon_rework/kill_dragon=true}] run tellraw @a[predicate=rcube:dragon_rework/end_centre] [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," ",{"text":"ENDER DRAGON DOWN!","color":"gold","bold":true}]
execute as @a[advancements={rcube:dragon_rework/kill_dragon=true}] run tellraw @a[predicate=rcube:dragon_rework/end_centre] ""

execute as @a[advancements={rcube:dragon_rework/kill_dragon=true}] run tellraw @s [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," ",{"selector":"@s","color":"dark_gray"},{"text":" dealt the final blow.","color":"gray"}]
execute as @a[advancements={rcube:dragon_rework/kill_dragon=true}] run tellraw @a[predicate=rcube:dragon_rework/end_centre,advancements={rcube:dragon_rework/kill_dragon=false}] [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," ",{"text": "You","color": "green"},{"text": " dealt the final blow.","color": "gray"}]
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

# Grant advancement
execute as @a[predicate=rcube:dragon_rework/end_centre,advancements={minecraft:end/kill_dragon=false}] run advancement grant @s[gamemode=!spectator] only minecraft:end/kill_dragon

# Save data (has been defeated)
execute unless data storage rcube:dragon_rework {previously_defeated:true} run data merge storage rcube:dragon_rework {previously_defeated:true}

# Revoke trigger advancement
advancement revoke @a[advancements={rcube:dragon_rework/kill_dragon=true}] only rcube:dragon_rework/kill_dragon