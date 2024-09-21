# Made by: @rcube.
# Rapid-fire fireball
#
# Called By: rcube:dragon_rework/attacks/run
# Ran as: Entity, Ender Dragon (scores={rcube_dragonRework.phase=8})

# Choose players
execute at @s if entity @s[tag=dragon_rework.MAD,tag=!dragon_rework.UNHINGED] run scoreboard players set @a[predicate=rcube:dragon_rework/end_centre,gamemode=!spectator,sort=random,limit=3] rcube_dragonRework.temp 2
execute at @s if entity @s[tag=dragon_rework.UNHINGED] run scoreboard players set @a[predicate=rcube:dragon_rework/end_centre,gamemode=!spectator,sort=random,limit=5] rcube_dragonRework.temp 2

# Warn players
execute as @a[scores={rcube_dragonRework.temp=2}] run function rcube:dragon_rework/attacks/warning

# Give player effects
schedule function rcube:dragon_rework/sch/fireball/rapid/effects 5t append

# Summon fireballs
function rcube:dragon_rework/sch/fireball/rapid/summon
schedule function rcube:dragon_rework/sch/fireball/rapid/launch 10t append
schedule function rcube:dragon_rework/sch/fireball/rapid/launch 20t append
schedule function rcube:dragon_rework/sch/fireball/rapid/launch 30t append
execute if entity @s[tag=dragon_rework.UNHINGED] run schedule function rcube:dragon_rework/sch/fireball/rapid/launch 40t append
execute if entity @s[tag=dragon_rework.UNHINGED] run schedule function rcube:dragon_rework/sch/fireball/rapid/launch 50t append
execute if entity @s[tag=dragon_rework.UNHINGED] run schedule function rcube:dragon_rework/sch/fireball/rapid/launch 60t append

# Remove tag
schedule function rcube:dragon_rework/sch/fireball/rapid/clear_tag 70t append
