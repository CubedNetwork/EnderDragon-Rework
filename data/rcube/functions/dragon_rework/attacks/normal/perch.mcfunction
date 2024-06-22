# Made by: @rcube.
# Force dragon to perch
#
# Called By: rcube:dragon_rework/attacks/do_mad
# Ran as: Entity, Ender Dragon (scores={rcube_dragonRework.phase=4})

execute unless entity @s[tag=dragon_revamp.MAD] run data modify entity @s DragonPhase set value 3
execute if entity @s[tag=dragon_revamp.MAD] run function rcube:dragon_revamp/sch/fireball
