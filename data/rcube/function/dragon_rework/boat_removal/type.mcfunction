# Made by: @rcube.
# Find boat type
# If type not found, kill boat
#
# Called By: rcube:dragon_rework/dragon
# Ran as: Entity, Ender Dragon

# Normal boats
execute if entity @s[type=minecraft:oak_boat] run return run function rcube:dragon_rework/boat_removal/item {"type":"minecraft:oak_boat"}
execute if entity @s[type=minecraft:spruce_boat] run return run function rcube:dragon_rework/boat_removal/item {"type":"minecraft:spruce_boat"}
execute if entity @s[type=minecraft:birch_boat] run return run function rcube:dragon_rework/boat_removal/item {"type":"minecraft:birch_boat"}
execute if entity @s[type=minecraft:jungle_boat] run return run function rcube:dragon_rework/boat_removal/item {"type":"minecraft:jungle_boat"}
execute if entity @s[type=minecraft:acacia_boat] run return run function rcube:dragon_rework/boat_removal/item {"type":"minecraft:acacia_boat"}
execute if entity @s[type=minecraft:cherry_boat] run return run function rcube:dragon_rework/boat_removal/item {"type":"minecraft:cherry_boat"}
execute if entity @s[type=minecraft:dark_oak_boat] run return run function rcube:dragon_rework/boat_removal/item {"type":"minecraft:dark_oak_boat"}
execute if entity @s[type=minecraft:mangrove_boat] run return run function rcube:dragon_rework/boat_removal/item {"type":"minecraft:mangrove_boat"}
execute if entity @s[type=minecraft:bamboo_raft] run return run function rcube:dragon_rework/boat_removal/item {"type":"minecraft:bamboo_raft"}

# Chest boats
execute if entity @s[type=minecraft:oak_chest_boat] run return run function rcube:dragon_rework/boat_removal/item {"type":"minecraft:oak_chest_boat"}
execute if entity @s[type=minecraft:spruce_chest_boat] run return run function rcube:dragon_rework/boat_removal/item {"type":"minecraft:spruce_chest_boat"}
execute if entity @s[type=minecraft:birch_chest_boat] run return run function rcube:dragon_rework/boat_removal/item {"type":"minecraft:birch_chest_boat"}
execute if entity @s[type=minecraft:jungle_chest_boat] run return run function rcube:dragon_rework/boat_removal/item {"type":"minecraft:jungle_chest_boat"}
execute if entity @s[type=minecraft:acacia_chest_boat] run return run function rcube:dragon_rework/boat_removal/item {"type":"minecraft:acacia_chest_boat"}
execute if entity @s[type=minecraft:cherry_chest_boat] run return run function rcube:dragon_rework/boat_removal/item {"type":"minecraft:cherry_chest_boat"}
execute if entity @s[type=minecraft:dark_oak_chest_boat] run return run function rcube:dragon_rework/boat_removal/item {"type":"minecraft:dark_oak_chest_boat"}
execute if entity @s[type=minecraft:mangrove_chest_boat] run return run function rcube:dragon_rework/boat_removal/item {"type":"minecraft:mangrove_chest_boat"}
execute if entity @s[type=minecraft:bamboo_chest_raft] run return run function rcube:dragon_rework/boat_removal/item {"type":"minecraft:bamboo_chest_raft"}

# Kill boat if type not found
kill @s
