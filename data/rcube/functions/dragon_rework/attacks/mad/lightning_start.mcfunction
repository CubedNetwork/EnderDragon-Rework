# Made by: @rcube.
# Zeus strikes back.
#
# Called By: rcube:dragon_rework/attacks/do_mad
# Ran as: Entity, Ender Dragon (scores={rcube.dragonRework_phase=6})

execute in minecraft:the_end as @a[predicate=rcube:dragon_rework/end_centre,gamemode=!spectator] at @s run summon marker ~ ~ ~ {Tags:["dragon_rework.lightning"]}
execute as @a[predicate=rcube:dragon_rework/end_centre,gamemode=!spectator] run function rcube:dragon_rework/attacks/warning
schedule function rcube:dragon_rework/sch/lightning_do 1s