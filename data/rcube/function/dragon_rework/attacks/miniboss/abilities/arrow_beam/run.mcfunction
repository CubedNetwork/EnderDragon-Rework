# Made by: @rcube.
# OWW!
#
# Called By: rcube:dragon_rework/attacks/miniboss/abilities/run
# Ran as: Entity, Player

# Choose players
execute at @s if entity @s[tag=!dragon_rework.minibossMAD] run scoreboard players set @a[predicate=rcube:dragon_rework/end_centre,gamemode=!spectator,sort=nearest,limit=3] rcube_dragonRework.temp 5
execute at @s if entity @s[tag=dragon_rework.minibossMAD] run scoreboard players set @a[predicate=rcube:dragon_rework/end_centre,gamemode=!spectator,sort=nearest,limit=5] rcube_dragonRework.temp 5

# Set arrow shoot count
scoreboard players set $arrow_beam.loop rcube_dragonRework.store 25
execute if entity @e[tag=dragon_rework.miniboss,tag=dragon_rework.minibossMAD] run scoreboard players add $arrow_beam.loop rcube_dragonRework.store 10

# Shoot arrows - some will bounce off players due to i-frames
# Swap to custom damage type later with bypasses_cooldown
function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/loop

# Cleanup
schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/cleanup 75t append
