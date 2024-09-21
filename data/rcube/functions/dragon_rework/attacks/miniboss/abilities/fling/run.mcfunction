# Made by: @rcube.
# Weee!
#
# Called By: rcube:dragon_rework/attacks/miniboss/abilities/run
# Ran as: Entity, Player (1 or 2 nearest to miniboss)

execute if entity @s[tag=!dragon_rework.minibossMAD] as @a[predicate=rcube:dragon_rework/end_centre,sort=nearest,limit=1,gamemode=!spectator] at @s run tag @s add dragon_rework.miniboss.fling.VICTIM
execute if entity @s[tag=dragon_rework.minibossMAD] as @a[predicate=rcube:dragon_rework/end_centre,sort=nearest,limit=2,gamemode=!spectator] at @s run tag @s add dragon_rework.miniboss.fling.VICTIM
function rcube:dragon_rework/attacks/miniboss/abilities/fling/run_as
