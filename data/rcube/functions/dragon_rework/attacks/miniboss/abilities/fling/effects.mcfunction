# Made by: @rcube.
# Weee!
#
# Called By: rcube:dragon_rework/attacks/miniboss/abilities/fling/run_as
# Ran as: Entity, Player

# Weee!
execute if entity @e[tag=dragon_rework.miniboss,tag=!dragon_rework.minibossMAD] run effect give @a[tag=dragon_rework.miniboss.fling.VICTIM] minecraft:levitation 1 24 true
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] run effect give @a[tag=dragon_rework.miniboss.fling.VICTIM] minecraft:levitation 1 39 true

# I CAN'T SEE, HELP!
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] run effect give @a[tag=dragon_rework.miniboss.fling.VICTIM] minecraft:blindness 2 0 true
