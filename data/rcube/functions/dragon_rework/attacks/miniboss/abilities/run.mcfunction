# Made by: @rcube.
# Use abilities
#
# Called By: rcube:dragon_rework/attacks/miniboss/tick
# Ran as: Entity(custom), Miniboss

# Use ability
execute if entity @s[scores={rcube_dragonRework.phase=1}] at @s run function rcube:dragon_rework/attacks/miniboss/abilities/minions
execute if entity @s[scores={rcube_dragonRework.phase=2}] at @s run function rcube:dragon_rework/attacks/miniboss/abilities/fling/run
execute if entity @s[scores={rcube_dragonRework.phase=3}] at @s run function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/run

# Increment phase
scoreboard players add @s rcube_dragonRework.phase 1
execute if entity @s[scores={rcube_dragonRework.phase=4..},tag=!dragon_rework.minibossMAD] run scoreboard players set @s rcube_dragonRework.phase 1
execute if entity @s[scores={rcube_dragonRework.phase=3..},tag=dragon_rework.minibossMAD] run scoreboard players set @s rcube_dragonRework.phase 1
