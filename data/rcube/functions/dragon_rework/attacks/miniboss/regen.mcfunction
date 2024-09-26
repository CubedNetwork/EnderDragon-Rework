# Made by: @rcube.
# Give miniboss regen
# Run every 2.5s (50t)
#
# Called By: rcube:dragon_rework/attacks/miniboss/regen

# Heal by 1 hp (1.5 if mad)
execute store result score $miniboss.regen rcube_dragonRework.store run data get entity @e[tag=dragon_rework.miniboss,limit=1] Health 10000
execute if entity @e[tag=dragon_rework.miniboss] unless entity @e[tag=dragon_rework.minibossMAD] unless score $miniboss.regen rcube_dragonRework.store matches 15000.. run scoreboard players add $miniboss.regen rcube_dragonRework.store 10000
execute if entity @e[tag=dragon_rework.minibossMAD] unless score $miniboss.regen rcube_dragonRework.store matches 15000.. run scoreboard players add $miniboss.regen rcube_dragonRework.store 15000
execute store result storage rcube:dragon_rework root.health.miniboss float 0.0001 unless score $miniboss.regen rcube_dragonRework.store matches 15000.. run scoreboard players get $miniboss.regen rcube_dragonRework.store
execute as @e[tag=dragon_rework.miniboss] unless score $miniboss.regen rcube_dragonRework.store matches 15000.. run data modify entity @s Health set from storage rcube:dragon_rework root.health.miniboss

# Loop
execute if entity @e[tag=dragon_rework.miniboss] run schedule function rcube:dragon_rework/attacks/miniboss/regen 50t
