# Made by: @rcube.
# Give miniboss regen
# Run every 2.5s (50t)
#
# Called By: rcube:dragon_rework/attacks/mad/miniboss/regen (If miniboss exists)

# Heal by 1 hp
execute store result score $miniboss.regen rcube_dragonRework.store run data get entity @e[tag=dragon_rework.miniboss,limit=1] Health 10000
scoreboard players add $miniboss.regen rcube_dragonRework.store 10000
execute store result storage rcube:dragon_rework root.health.miniboss float 0.0001 run scoreboard players get $miniboss.regen rcube_dragonRework.store
execute as @e[tag=dragon_rework.miniboss] run data modify entity @s Health set from storage rcube:dragon_rework root.health.miniboss

# Loop
execute if entity @e[tag=dragon_rework.miniboss] run schedule function rcube:dragon_rework/attacks/mad/miniboss/regen 50t replace
