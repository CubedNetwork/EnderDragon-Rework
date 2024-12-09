# Made by: @rcube.
# Setup raycast
# 
# Called By: rcube:dragon_rework/tick, rcube:dragon_rework/dimension_ripper/use
# Ran as: Entity, Player

# Prepare raycast
scoreboard players set #distance rcube_dragonRework.item 50

# Start raycast
execute anchored eyes run function rcube:dragon_rework/dimension_ripper/ray/ray

# Check if block found
execute if score #hit rcube_dragonRework.item matches 1 run return run scoreboard players reset #hit rcube_dragonRework.item
return fail
