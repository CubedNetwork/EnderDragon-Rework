# Made by: @rcube.
# Run attacks
#
# Called By: rcube:dragon_rework/dragon
# Ran as: Entity, Ender Dragon

# Check and run
execute if entity @s[scores={rcube_dragonRework.phase=1}] in minecraft:the_end at @s run function rcube:dragon_rework/attacks/normal/enderman_aggro
execute if entity @s[scores={rcube_dragonRework.phase=2}] in minecraft:the_end at @s run function rcube:dragon_rework/attacks/global/end_zombie
execute if entity @s[scores={rcube_dragonRework.phase=3}] in minecraft:the_end at @s run function rcube:dragon_rework/attacks/global/fireball
execute if entity @s[scores={rcube_dragonRework.phase=4}] in minecraft:the_end at @s run function rcube:dragon_rework/attacks/global/perch
execute if entity @s[tag=dragon_rework.MAD,scores={rcube_dragonRework.phase=5}] in minecraft:the_end at @s run function rcube:dragon_rework/attacks/mad/teleport
execute if entity @s[tag=dragon_rework.MAD,scores={rcube_dragonRework.phase=6}] in minecraft:the_end at @s run function rcube:dragon_rework/attacks/mad/lightning
execute if entity @s[tag=dragon_rework.MAD,scores={rcube_dragonRework.phase=7}] in minecraft:the_end at @s run function rcube:dragon_rework/attacks/mad/phantom
execute if entity @s[tag=dragon_rework.MAD,scores={rcube_dragonRework.phase=8}] in minecraft:the_end at @s run function rcube:dragon_rework/attacks/mad/rapid_fireball

# Increment + Cap phase (only if not mad)
scoreboard players add @s rcube_dragonRework.phase 1
execute if entity @s[scores={rcube_dragonRework.phase=5..},tag=!dragon_rework.MAD] run scoreboard players set @s rcube_dragonRework.phase 1
execute if entity @s[scores={rcube_dragonRework.phase=9..},tag=dragon_rework.MAD] run scoreboard players set @s rcube_dragonRework.phase 1
