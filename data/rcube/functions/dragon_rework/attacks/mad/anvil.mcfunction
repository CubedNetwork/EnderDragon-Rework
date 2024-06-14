# Made by: @rcube.
# Drop an anvil on player's head. Boop! (To be replaced with large phantoms)
#
# Called By: rcube:dragon_rework/attacks/do_mad
# Ran as: Entity, Player (scores={rcube.dragonRework_customDragonPhase=5})

function rcube:dragon_revamp/attacks/warning
execute as @a[predicate=rcube:dragon_rework/end_centre] at @s run summon falling_block ~ ~20 ~ {BlockState:{Name:"minecraft:anvil"},Time:1,DropItem:0b,HurtEntities:1b,FallHurtMax:40,FallHurtAmount:5f}