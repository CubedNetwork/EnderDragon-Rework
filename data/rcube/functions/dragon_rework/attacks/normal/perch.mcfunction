# Made by: @rcube.
# Force dragon to perch
#
# Called By: rcube:dragon_rework/attacks/do_mad
# Ran as: Entity, Ender Dragon (scores={rcube_dragonRework.phase=4})

data modify entity @s DragonPhase set value 3
execute if entity @s[tag=dragon_rework.MAD] run function rcube:dragon_rework/sch/fireball/single
