# Made by: @rcube.
# Weee!
#
# Called By: rcube:dragon_rework/attacks/mad/miniboss/abilities/do (If miniboss exists)
# Ran as: Entity, Player (1 or 2 nearest to miniboss)

# Particles in
execute if entity @e[tag=dragon_rework.miniboss] anchored feet rotated ~ 0 run particle portal ^ ^.75 ^ 0 0.25 0 0.5 2000 force
# Particles out
execute at @s anchored feet rotated ~ 0 run schedule function rcube:dragon_rework/attacks/mad/miniboss/abilities/fling/sch/blind 2s append

# Float
execute if entity @e[tag=dragon_rework.miniboss,tag=!dragon_rework.minibossMAD] at @s run schedule function rcube:dragon_rework/attacks/mad/miniboss/abilities/fling/sch/float 3s append
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] at @s run schedule function rcube:dragon_rework/attacks/mad/miniboss/abilities/fling/sch/float 50t append
# Blind
execute if entity @e[tag=dragon_rework.miniboss,tag=!dragon_rework.minibossMAD] at @s run schedule function rcube:dragon_rework/attacks/mad/miniboss/abilities/fling/sch/blind 3s append
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] at @s run schedule function rcube:dragon_rework/attacks/mad/miniboss/abilities/fling/sch/blind 50t append
# Remove tag
execute if entity @e[tag=dragon_rework.miniboss,tag=!dragon_rework.miniboss] at @s run schedule function rcube:dragon_rework/attacks/mad/miniboss/abilities/fling/sch/clear_tag 4s append
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.miniboss] at @s run schedule function rcube:dragon_rework/attacks/mad/miniboss/abilities/fling/sch/clear_tag 4s append