# Made by: @rcube.
# Ignite creepers
#
# Called By: rcube:dragon_rework/attacks/creeper_bomb/run

# Ignite
execute as @e[tag=dragon_rework.creeper_bomb] run data modify entity @s ignited set value true
execute as @e[predicate=rcube:dragon_rework/end_centre,tag=!dragon_rework.invulnerable,tag=!dragon_rework.creeper_bomb.invulnerable,type=!minecraft:marker] run data modify entity @s Invulnerable set value true
execute as @e[predicate=rcube:dragon_rework/end_centre,tag=!dragon_rework.invulnerable,tag=!dragon_rework.creeper_bomb.invulnerable,type=!minecraft:marker] run tag @s add dragon_rework.creeper_bomb.invulnerable
schedule function rcube:dragon_rework/attacks/creeper_bomb/remove_invul 25t replace
