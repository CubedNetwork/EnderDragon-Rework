# Made by: @rcube.
# Give everyone at end centre advancement
#
# Called By: rcube:dragon_rework/kill_dragon (ADVANCEMENT)
# Ran as: Entity, Player

# Give advancement
execute as @a[advancements={rcube:dragon_rework/kill_dragon=true}] run tellraw @a[predicate=rcube:dragon_rework/end_centre] ""
execute as @a[advancements={rcube:dragon_rework/kill_dragon=true}] run tellraw @a[predicate=rcube:dragon_rework/end_centre] [{"selector":"@s","color": "yellow","bold": true}," did the final blow!"]
execute as @a[advancements={rcube:dragon_rework/kill_dragon=true}] run tellraw @a[predicate=rcube:dragon_rework/end_centre] ""
execute as @a[predicate=rcube:dragon_rework/end_centre] run advancement grant @s[gamemode=!spectator] only minecraft:end/kill_dragon 
advancement revoke @a only rcube:dragon_rework/kill_dragon