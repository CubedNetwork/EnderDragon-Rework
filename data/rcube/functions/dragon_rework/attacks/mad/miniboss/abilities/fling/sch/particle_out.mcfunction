# Made by: @rcube.
# Dispatch particles
#
# Called By: rcube:dragon_rework/attacks/mad/miniboss/abilities/fling/do
# Ran as: Entity, Player

# Shoot out particle
execute if entity @e[tag=dragon_rework.miniboss] as @e[tag=dragon_rework.miniboss.VICTIM] at @s run particle minecraft:reverse_portal ^ ^.75 ^ 0 0.25 0 3 1000 force