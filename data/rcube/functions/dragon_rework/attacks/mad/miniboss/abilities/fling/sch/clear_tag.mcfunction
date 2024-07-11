# Made by: @rcube.
# Clears tags
#
# Called By: rcube:dragon_rework/attacks/mad/miniboss/abilities/do (If miniboss exists)
# Ran as: Entity, Player

tag @e[tag=dragon_rework.miniboss.VICTIM] remove dragon_rework.miniboss.VICTIM_1
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] run tag @e[tag=dragon_rework.miniboss.VICTIM] remove dragon_rework.miniboss.VICTIM_2
tag @e[tag=dragon_rework.miniboss.VICTIM] remove dragon_rework.miniboss.VICTIM