# Made by: @rcube.
# Run attacks
#
# Called By: rcube:dragon_rework/dragon
# Ran as: Entity, Ender Dragon

# Run attack
execute if entity @s[scores={rcube_dragonRework.phase=1}] at @s run function rcube:dragon_rework/attacks/enderman_aggro/run
execute if entity @s[scores={rcube_dragonRework.phase=2}] at @s run function rcube:dragon_rework/attacks/end_zombie
execute if entity @s[scores={rcube_dragonRework.phase=3}] at @s run function rcube:dragon_rework/attacks/fireball
execute if entity @s[scores={rcube_dragonRework.phase=4}] at @s run function rcube:dragon_rework/attacks/perch/run
execute if entity @s[tag=dragon_rework.MAD,scores={rcube_dragonRework.phase=5}] at @s run function rcube:dragon_rework/attacks/teleport
execute if entity @s[tag=dragon_rework.MAD,scores={rcube_dragonRework.phase=6}] at @s run function rcube:dragon_rework/attacks/lightning
execute if entity @s[tag=dragon_rework.MAD,scores={rcube_dragonRework.phase=7}] at @s run function rcube:dragon_rework/attacks/phantom
execute if entity @s[tag=dragon_rework.MAD,scores={rcube_dragonRework.phase=8}] at @s run function rcube:dragon_rework/attacks/rapid_fireball
execute if entity @s[tag=dragon_rework.UNHINGED,scores={rcube_dragonRework.phase=9}] at @s run function rcube:dragon_rework/attacks/creeper_horde
execute if entity @s[tag=dragon_rework.UNHINGED,scores={rcube_dragonRework.phase=10}] at @s run function rcube:dragon_rework/attacks/creeper_bomb/run

# Increment phase
scoreboard players add @s rcube_dragonRework.phase 1
execute if entity @s[scores={rcube_dragonRework.phase=5..},tag=!dragon_rework.MAD,tag=!dragon_rework.UNHINGED] run scoreboard players set @s rcube_dragonRework.phase 1
execute if entity @s[scores={rcube_dragonRework.phase=9..},tag=dragon_rework.MAD,tag=!dragon_rework.UNHINGED] run scoreboard players set @s rcube_dragonRework.phase 1
execute if entity @s[scores={rcube_dragonRework.phase=11..},tag=dragon_rework.UNHINGED] run scoreboard players set @s rcube_dragonRework.phase 1
