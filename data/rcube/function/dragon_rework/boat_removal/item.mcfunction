# Made by: @rcube.
# Kill boat and spawn item
#
# Called By: rcube:dragon_rework/boat_removal/type
# Ran as: Entity, Boat

# Spawn item
$summon item ~ ~ ~ {Item:{id:"$(type)",count:1b}}

# Kill boat
kill @s