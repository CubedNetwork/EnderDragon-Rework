# Made by: @rcube.
# Run MAD attacks
#
# Called By: rcube:dragon_rework/attacks/do
# Ran as: Entity, Ender Dragon (MAD = true)

execute if entity @s[scores={rcube_dragonRework.phase=5}] in minecraft:the_end at @s run function rcube:dragon_rework/attacks/mad/teleport
execute if entity @s[scores={rcube_dragonRework.phase=6}] in minecraft:the_end at @s run function rcube:dragon_rework/attacks/mad/lightning_start
execute if entity @s[scores={rcube_dragonRework.phase=7}] in minecraft:the_end at @s run function rcube:dragon_rework/attacks/mad/phantom
execute if entity @s[scores={rcube_dragonRework.phase=8}] in minecraft:the_end at @s run function rcube:dragon_rework/attacks/mad/rapid_fireball