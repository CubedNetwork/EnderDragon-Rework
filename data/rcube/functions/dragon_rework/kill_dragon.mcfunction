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
execute as @a[advancements={rcube:dragon_rework/kill_dragon=true}] run tellraw @a[predicate=rcube:dragon_rework/end_centre] [{"text":"-----------------------------------------------------","strikethrough":true,"color":"green"}]
execute as @a[advancements={rcube:dragon_rework/kill_dragon=true}] run tellraw @a[predicate=rcube:dragon_rework/end_centre] ""

# Give advancement
execute as @a[predicate=rcube:dragon_rework/end_centre,advancements={minecraft:end/kill_dragon=false}] run advancement grant @s[gamemode=!spectator] only minecraft:end/kill_dragon

# Revoke trigger advancement
advancement revoke @a[advancements={rcube:dragon_rework/kill_dragon=true}] only rcube:dragon_rework/kill_dragon