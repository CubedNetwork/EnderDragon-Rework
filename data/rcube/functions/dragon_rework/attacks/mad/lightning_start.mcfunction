# Made by: @rcube.
# Zeus strikes back.
#
# Called By: rcube:dragon_rework/attacks/do_mad
# Ran as: Entity, Ender Dragon (scores={rcube.dragonRework_customDragonPhase=6})

execute in minecraft:the_end as @a[predicate=rcube:dragon_rework/end_centre] at @s run summon marker ~ ~ ~ {Tags:["dragon_rework.lightning"]}
execute as @a[predicate=rcube:dragon_rework/end_centre] run function rcube:dragon_rework/attacks/warning
schedule function rcube:dragon_rework/sch/lightning_do 1s