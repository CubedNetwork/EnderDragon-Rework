# Made by: @rcube.
# Run attacks
#
# Called By: rcube:dragon_rework/dragon
# Ran as: Entity, Ender Dragon (dragonInit = true)

# Check and run
execute if entity @s[scores={rcube_dragonRework.phase=1}] in minecraft:the_end at @s run function rcube:dragon_rework/attacks/normal/enderman_aggro
execute if entity @s[scores={rcube_dragonRework.phase=2}] in minecraft:the_end at @s run function rcube:dragon_rework/attacks/normal/end_zombie
execute if entity @s[scores={rcube_dragonRework.phase=3}] in minecraft:the_end at @s run function rcube:dragon_rework/attacks/normal/fireball
execute if entity @s[scores={rcube_dragonRework.phase=4},tag=!dragon_rework.MAD] in minecraft:the_end at @s run function rcube:dragon_rework/attacks/normal/perch
execute if entity @s[tag=dragon_rework.MAD] run function rcube:dragon_rework/attacks/do_mad

# Increment + Cap phase (only if not mad)
scoreboard players add @s rcube_dragonRework.phase 1
execute if entity @s[scores={rcube_dragonRework.phase=5..},tag=!dragon_rework.MAD] run scoreboard players set @s rcube_dragonRework.phase 1
execute if entity @s[scores={rcube_dragonRework.phase=9..},tag=dragon_rework.MAD] run scoreboard players set @s rcube_dragonRework.phase 1
