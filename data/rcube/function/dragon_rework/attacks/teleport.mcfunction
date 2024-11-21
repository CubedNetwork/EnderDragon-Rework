# Made by: @rcube.
# Teleport away
#
# Called By: rcube:dragon_rework/attacks/run
# Ran as: Entity, Ender Dragon (scores={rcube_dragonRework.phase=5})

# Teleport to random crystal (if on tower)
execute if entity @e[tag=dragon_rework.crystal.near] run tp @s @e[tag=dragon_rework.crystal.near,sort=random,limit=1]

# If no crystals, teleport to random tower
execute unless entity @e[tag=dragon_rework.crystal.near] run tp @s @e[tag=dragon_rework.crystal,sort=random,limit=1]
