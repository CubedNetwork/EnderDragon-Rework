# Made by: @rcube.
# Use abilities
#
# Called By: rcube:dragon_rework/attacks/mad/miniboss/tick
# Ran as: Entity(custom), Miniboss

# Check and run
execute if entity @s[scores={rcube_dragonRework.phase=1}] at @s run function rcube:dragon_rework/attacks/mad/miniboss/abilities/minions
# Fling
execute if entity @s[scores={rcube_dragonRework.phase=2},tag=!dragon_rework.minibossMAD] in minecraft:the_end as @a[predicate=rcube:dragon_rework/end_centre,sort=nearest,limit=1] at @s run function rcube:dragon_rework/attacks/mad/miniboss/abilities/fling/do
execute if entity @s[scores={rcube_dragonRework.phase=2},tag=dragon_rework.minibossMAD] in minecraft:the_end as @a[predicate=rcube:dragon_rework/end_centre,sort=nearest,limit=2] at @s run function rcube:dragon_rework/attacks/mad/miniboss/abilities/fling/do
# execute if entity @s[scores={rcube_dragonRework.phase=3}] in minecraft:the_end as @a[predicate=rcube:dragon_rework/end_centre] at @s run function rcube:dragon_rework/attacks/mad/miniboss/abilities/arrow_rain

# Increment + Cap phase
scoreboard players add @s rcube_dragonRework.phase 1
execute if entity @s[scores={rcube_dragonRework.phase=3..},tag=!dragon_rework.minibossMAD] run scoreboard players set @s rcube_dragonRework.phase 1
execute if entity @s[scores={rcube_dragonRework.phase=4..},tag=dragon_rework.minibossMAD] run scoreboard players set @s rcube_dragonRework.phase 1