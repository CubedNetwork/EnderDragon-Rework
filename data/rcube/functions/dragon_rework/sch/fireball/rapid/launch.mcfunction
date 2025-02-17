# Made by: @rcube.
# Boom!
#
# Called By: rcube:dragon_rework/attacks/rapid_fireball

# Prepare & run
scoreboard players set @a[tag=dragon_rework.fireball_rapid.VICTIM] rcube_dragonRework.temp 2
execute at @e[tag=dragon_rework.dragonInit,limit=1] run function rcube:dragon_rework/sch/fireball/rapid/summon
