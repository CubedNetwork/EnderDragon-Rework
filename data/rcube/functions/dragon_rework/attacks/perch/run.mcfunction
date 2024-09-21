# Made by: @rcube.
# Rapid-fire fireball
#
# Called By: rcube:dragon_rework/attacks/run
# Ran as: Entity, Ender Dragon (scores={rcube_dragonRework.phase=4})

# #####################
# Begin Perch
# #####################
data modify entity @s DragonPhase set value 3

# ##########################
# Handle MAD & UNHINGED
# ##########################

# #####################
# Shoot fireball
# #####################
# Randomise chance to summon fireball
execute if entity @s[tag=dragon_rework.MAD] if predicate rcube:dragon_rework/rng run scoreboard players set @r[predicate=rcube:dragon_rework/end_centre,gamemode=!spectator] rcube_dragonRework.temp 3
execute if entity @a[scores={rcube_dragonRework.temp=3}] run function rcube:dragon_rework/sch/fireball/single
execute as @a[tag=dragon_rework.fireball_strong.VICTIM] run tag @s remove dragon_rework.fireball_strong.VICTIM

# #####################
# Aggro Endermen
# #####################
# Choose players within 15 block range of monument
execute if entity @s[tag=dragon_rework.MAD,tag=!dragon_rework.UNHINGED] at @e[tag=dragon_rework.monumentMarker] run scoreboard players set @a[predicate=rcube:dragon_rework/end_centre,gamemode=!spectator,distance=..15] rcube_dragonRework.temp 4
execute if entity @s[tag=dragon_rework.UNHINGED] at @e[tag=dragon_rework.monumentMarker] run scoreboard players set @a[predicate=rcube:dragon_rework/end_centre,gamemode=!spectator,distance=..15] rcube_dragonRework.temp 4

# Choose & aggro endermen
execute if entity @a[scores={rcube_dragonRework.temp=4}] run function rcube:dragon_rework/attacks/perch/loop

# Remove stale data
execute as @a[tag=dragon_rework.perch_enderman.VICTIM] run tag @s remove dragon_rework.perch_enderman.VICTIM
