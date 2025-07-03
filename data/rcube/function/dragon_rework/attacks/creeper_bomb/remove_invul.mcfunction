# Made by: @rcube.
# Remove mob invulnerability
#
# Called By: rcube:dragon_rework/attacks/creeper_bomb/ignite

# Ignite
execute as @e[predicate=rcube:dragon_rework/end_centre,tag=dragon_rework.creeper_bomb.invulnerable,tag=!dragon_rework.invulnerable,type=!minecraft:marker] run data modify entity @s Invulnerable set value false
execute as @e[predicate=rcube:dragon_rework/end_centre,tag=dragon_rework.creeper_bomb.invulnerable,tag=!dragon_rework.invulnerable,type=!minecraft:marker] run tag @s add dragon_rework.creeper_bomb.invulnerable
