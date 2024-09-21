# Made by: @rcube.
# Aggro 10 endermen per player, max of 3
#
# Called By: rcube:dragon_rework/attacks/run
# Ran as: Entity, Ender Dragon (scores={rcube_dragonRework.phase=1})

# Choose players
execute at @s if entity @s[tag=!dragon_rework.MAD,tag=!dragon_rework.UNHINGED] run scoreboard players set @a[predicate=rcube:dragon_rework/end_centre,gamemode=!spectator,sort=random,limit=3] rcube_dragonRework.temp 1
execute at @s if entity @s[tag=dragon_rework.MAD,tag=!dragon_rework.UNHINGED] run scoreboard players set @a[predicate=rcube:dragon_rework/end_centre,gamemode=!spectator,sort=random,limit=8] rcube_dragonRework.temp 1
execute at @s if entity @s[tag=dragon_rework.UNHINGED] run scoreboard players set @a[predicate=rcube:dragon_rework/end_centre,gamemode=!spectator] rcube_dragonRework.temp 1

# Choose & aggro endermen
function rcube:dragon_rework/attacks/enderman_aggro/loop

# Tell players who is being targeted
tellraw @a ""
execute unless entity @s[tag=!dragon_rework.UNHINGED] as @a[tag=dragon_rework.enderman.VICTIM] run tellraw @a ["",{"text":">> ","color": "dark_red"},{"selector":"@s","color": "dark_red","bold": true},{"text":" is being targeted by enderman! ","color": "red"},{"text":"<<","color": "dark_red"}]
execute if entity @s[tag=dragon_rework.UNHINGED] run tellraw @a ["",{"text":">> ","color": "dark_red"},{"text":"Everyone","color": "dark_red","bold": true,"underlined": true},{"text":" is being targeted by enderman! ","color": "red"},{"text":"<<","color": "dark_red"}]
tellraw @a ""

# Remove stale data
tag @a[tag=dragon_rework.enderman.VICTIM] remove dragon_rework.enderman.VICTIM
