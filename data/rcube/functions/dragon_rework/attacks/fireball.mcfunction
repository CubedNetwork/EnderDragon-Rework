# Made by: @rcube.
# Boom!
#
# Called By: rcube:dragon_rework/attacks/run
# Ran as: Entity, Ender Dragon (scores={rcube_dragonRework.phase=3})

# Prepare players
scoreboard players set @a[predicate=rcube:dragon_rework/end_centre,gamemode=!spectator] rcube_dragonRework.temp 3

# Summon fireball
function rcube:dragon_rework/sch/fireball/single

# Remove stale data
tag @a[tag=dragon_rework.fireball_strong.VICTIM] remove dragon_rework.fireball_strong.VICTIM
