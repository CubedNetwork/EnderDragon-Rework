# Made by: @rcube.
# Zeus strikes back.
#
# Called By: rcube:dragon_rework/attacks/mad/lightning_start
# Ran as: Entity, Ender Dragon (scores={rcube_dragonRework.phase=6})

# Summon lightning
execute as @e[tag=dragon_rework.lightning] at @s run summon minecraft:lightning_bolt
execute as @e[tag=dragon_rework.lightning] at @s run summon minecraft:lightning_bolt

# Damage player
execute as @e[tag=dragon_rework.lightning] at @s as @a[distance=..1.25] run damage @s 30 minecraft:lightning_bolt at ~ ~ ~

# Kill marker
kill @e[tag=dragon_rework.lightning]
