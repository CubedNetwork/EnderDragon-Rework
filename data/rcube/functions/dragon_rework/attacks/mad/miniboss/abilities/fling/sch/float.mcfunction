# Made by: @rcube.
# Weee!
#
# Called By: rcube:dragon_rework/attacks/mad/miniboss/abilities/fling/do
# Ran as: Entity, Player

# Give effect
execute if entity @e[tag=dragon_rework.miniboss,tag=!dragon_rework.minibossMAD] run effect give @a[tag=dragon_rework.miniboss.VICTIM] minecraft:levitation 1 24 true
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] run effect give @a[tag=dragon_rework.miniboss.VICTIM] minecraft:levitation 1 39 true