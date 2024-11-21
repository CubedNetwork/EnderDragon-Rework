# Made by: @rcube.
# Handle miniboss death
#
# Called By: rcube:dragon_rework/dragon

# Incase death handling not done (non-explosion)
execute unless entity @e[tag=dragon_rework.miniboss] if entity @e[tag=dragon_rework.miniboss.loc,tag=!dragon_rework.miniboss.dead] as @e[type=minecraft:end_crystal,predicate=rcube:dragon_rework/end_centre] run data modify entity @s Invulnerable set value false
execute unless entity @e[tag=dragon_rework.miniboss] if entity @e[tag=dragon_rework.miniboss.loc,tag=!dragon_rework.miniboss.dead] run kill @e[tag=dragon_rework.miniboss.minion]

# Self destruct
execute unless entity @e[tag=dragon_rework.miniboss] at @e[tag=dragon_rework.miniboss.loc] run particle explosion ~ ~.9 ~ 0.5 0.5 0.5 0 5 force
execute unless entity @e[tag=dragon_rework.miniboss] at @e[tag=dragon_rework.miniboss.loc] run playsound minecraft:entity.generic.explode hostile @a[predicate=rcube:dragon_rework/end_centre] ~ ~ ~ 7
execute unless entity @e[tag=dragon_rework.miniboss] at @e[tag=dragon_rework.miniboss.loc] as @a[distance=..3] run damage @s 40 minecraft:explosion at ~ ~ ~
execute unless entity @e[tag=dragon_rework.miniboss] as @e[tag=dragon_rework.miniboss.loc] run kill @s
