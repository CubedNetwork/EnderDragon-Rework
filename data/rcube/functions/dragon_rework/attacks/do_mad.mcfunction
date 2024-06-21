# Made by: @rcube.
# Run MAD attacks
#
# Called By: rcube:dragon_rework/attacks/do_mad
# Ran as: Entity, Ender Dragon (mad = true)

execute if entity @s[scores={rcube.dragonRework_phase=5}] in minecraft:the_end at @s run function rcube:dragon_rework/attacks/mad/teleport
execute if entity @s[scores={rcube.dragonRework_phase=6}] in minecraft:the_end at @s run function rcube:dragon_rework/attacks/mad/lightning_start
# remove anvil attack in favour of something else
execute if entity @s[scores={rcube.dragonRework_phase=7}] in minecraft:the_end at @s run function rcube:dragon_rework/attacks/mad/phantom
# execute if entity @s[scores={rcube.dragonRework_phase=8}] in minecraft:the_end at @s run function rcube:dragon_rework/attacks/mad/miniboss/summon