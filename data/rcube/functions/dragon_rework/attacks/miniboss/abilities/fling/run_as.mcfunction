# Made by: @rcube.
# Weee!
#
# Called By: rcube:dragon_rework/attacks/miniboss/abilities/fling/run
# Ran as: Entity, Player

# Particles in
execute if entity @e[tag=dragon_rework.miniboss] at @s anchored feet rotated ~ 0 run particle portal ^ ^.75 ^ 0 0.25 0 0.5 2000 force
# Particles out
execute if entity @e[tag=dragon_rework.miniboss,tag=!dragon_rework.minibossMAD] at @s anchored feet rotated ~ 0 run schedule function rcube:dragon_rework/attacks/miniboss/abilities/fling/particle_out 55t append
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] at @s anchored feet rotated ~ 0 run schedule function rcube:dragon_rework/attacks/miniboss/abilities/fling/particle_out 45t append

# Effects
execute if entity @e[tag=dragon_rework.miniboss,tag=!dragon_rework.minibossMAD] run schedule function rcube:dragon_rework/attacks/miniboss/abilities/fling/effects 3s append
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] run schedule function rcube:dragon_rework/attacks/miniboss/abilities/fling/effects 50t append

# Remove tag
execute if entity @e[tag=dragon_rework.miniboss,tag=!dragon_rework.minibossMAD] run schedule function rcube:dragon_rework/attacks/miniboss/abilities/fling/clear_tag 70t append
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] run schedule function rcube:dragon_rework/attacks/miniboss/abilities/fling/clear_tag 3s append
