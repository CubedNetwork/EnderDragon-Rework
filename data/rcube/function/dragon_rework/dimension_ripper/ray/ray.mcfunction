# Made by: @rcube.
# Raycast
# 
# Called By: rcube:dragon_rework/dimension_ripper/ray/start_ray, THIS
# Ran as: Entity, Player

# Check if block found
execute if block ~ ~ ~ end_portal_frame run function rcube:dragon_rework/dimension_ripper/ray/success

# Remove 1 from distance
scoreboard players remove #distance rcube_dragonRework.item 1

# If not found, loop
execute unless score #hit rcube_dragonRework.item matches 1 if score #distance rcube_dragonRework.item matches 1.. if block ~ ~ ~ #air positioned ^ ^ ^0.1 run return run function rcube:dragon_rework/dimension_ripper/ray/ray
scoreboard players reset #distance rcube_dragonRework.item
