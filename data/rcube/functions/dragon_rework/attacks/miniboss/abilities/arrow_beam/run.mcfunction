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
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 12t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 24t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 36t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 48t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 60t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 72t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 84t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 96t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 108t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 120t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 132t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 144t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 156t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 168t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 180t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 192t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 204t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 216t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 228t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 240t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 252t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 264t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 276t append
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 288t append

# Shoot 10 extra arrows if MAD
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] run schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 300t append
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] run schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 312t append
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] run schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 324t append
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] run schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 336t append
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] run schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 348t append
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] run schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 360t append
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] run schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 372t append
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] run schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 384t append
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] run schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 396t append
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] run schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/launch 408t append

# Despawn arrows
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/despawn 40s append

# Remove tag
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/clear_tag 413t append
