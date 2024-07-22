# Made by: @rcube.
# Use abilities
#
# Called By: rcube:dragon_rework/attacks/mad/miniboss/tick
# Ran as: Entity(custom), Miniboss

# Check and run
execute if entity @s[scores={rcube_dragonRework.phase=1}] at @s run function rcube:dragon_rework/attacks/mad/miniboss/abilities/minions
# Fling
execute if entity @s[scores={rcube_dragonRework.phase=2},tag=!dragon_rework.minibossMAD] in minecraft:the_end as @a[predicate=rcube:dragon_rework/end_centre,sort=nearest,limit=1,gamemode=!spectator] at @s run tag @s add dragon_rework.miniboss.VICTIM
execute if entity @s[scores={rcube_dragonRework.phase=2},tag=dragon_rework.minibossMAD] in minecraft:the_end as @a[predicate=rcube:dragon_rework/end_centre,sort=nearest,limit=2,gamemode=!spectator] at @s run tag @s add dragon_rework.miniboss.VICTIM
execute if entity @s[scores={rcube_dragonRework.phase=2}] in minecraft:the_end as @a[tag=dragon_rework.miniboss.VICTIM] at @s run function rcube:dragon_rework/attacks/mad/miniboss/abilities/fling/do


# execute if entity @s[scores={rcube_dragonRework.phase=3}] in minecraft:the_end as @a[predicate=rcube:dragon_rework/end_centren] at @s run function rcube:dragon_rework/attacks/mad/miniboss/abilities/arrow_rain
# tellraw @a[predicate=rcube:dragon_rework/end_centre] [{"text":"!!", "color": "dark_red"},{"text": " MINIBOSS ATTACKING", "color": "red"}]

# Increment + Cap phase
scoreboard players add @s rcube_dragonRework.phase 1
execute if entity @s[scores={rcube_dragonRework.phase=3..},tag=!dragon_rework.minibossMAD] run scoreboard players set @s rcube_dragonRework.phase 1
execute if entity @s[scores={rcube_dragonRework.phase=2..},tag=dragon_rework.minibossMAD] run scoreboard players set @s rcube_dragonRework.phase 1