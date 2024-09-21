# Made by: @rcube.
# OWW!
#
# Called By: rcube:dragon_rework/attacks/miniboss/abilities/run
# Ran as: Entity, Player

# Choose players
execute at @s if entity @s[tag=!dragon_rework.minibossMAD] run scoreboard players set @a[predicate=rcube:dragon_rework/end_centre,gamemode=!spectator,sort=nearest,limit=3] rcube_dragonRework.temp 5
execute at @s if entity @s[tag=dragon_rework.minibossMAD] run scoreboard players set @a[predicate=rcube:dragon_rework/end_centre,gamemode=!spectator,sort=nearest,limit=5] rcube_dragonRework.temp 5

# Shoot 25 arrows
function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/spawn
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 1t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 2t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 3t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 4t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 5t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 6t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 7t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 8t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 9t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 10t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 11t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 12t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 13t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 14t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 15t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 16t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 17t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 18t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 19t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 20t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 21t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 22t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 23t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 24t append

# Shoot 10 extra arrows if MAD
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] run schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 25t append
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] run schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 26t append
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] run schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 27t append
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] run schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 28t append
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] run schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 29t append
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] run schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 30t append
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] run schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 31t append
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] run schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 32t append
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] run schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 33t append
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] run schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 34t append

# Despawn arrows
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/despawn 20s append

# Remove tag
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/clear_tag 40t append
