# Made by: @rcube.
# Store UUID
#
# Called By: rcube:dragon_rework/dragon
# Ran as: Selector, @e (!dragon_rework.storedUUID, dragon_rework.arrowDodge)
#         Selector, @a (!dragon_rework.storedUUID)

tag @s add dragon_rework.storedUUID
# Arrows
execute if entity @s[type=minecraft:arrow] run tag @s add dragon_rework.arrowInit
execute if entity @s[type=minecraft:arrow] store result score .arrow rcube_dragonRework.UUID0 run data get entity @s Owner[0]
execute if entity @s[type=minecraft:arrow] store result score .arrow rcube_dragonRework.UUID1 run data get entity @s Owner[1]
execute if entity @s[type=minecraft:arrow] store result score .arrow rcube_dragonRework.UUID2 run data get entity @s Owner[2]
execute if entity @s[type=minecraft:arrow] store result score .arrow rcube_dragonRework.UUID3 run data get entity @s Owner[3]

# Ender Dragon
execute if entity @s[type=minecraft:ender_dragon] store result score $ender_dragon rcube_dragonRework.UUID0 run data get entity @s UUID[0]
execute if entity @s[type=minecraft:ender_dragon] store result score $ender_dragon rcube_dragonRework.UUID1 run data get entity @s UUID[1]
execute if entity @s[type=minecraft:ender_dragon] store result score $ender_dragon rcube_dragonRework.UUID2 run data get entity @s UUID[2]
execute if entity @s[type=minecraft:ender_dragon] store result score $ender_dragon rcube_dragonRework.UUID3 run data get entity @s UUID[3]


# Players / Mobs
execute if entity @s[type=!minecraft:arrow,type=!minecraft:ender_dragon] store result score @s rcube_dragonRework.UUID0 run data get entity @s UUID[0]
execute if entity @s[type=!minecraft:arrow,type=!minecraft:ender_dragon] store result score @s rcube_dragonRework.UUID1 run data get entity @s UUID[1]
execute if entity @s[type=!minecraft:arrow,type=!minecraft:ender_dragon] store result score @s rcube_dragonRework.UUID2 run data get entity @s UUID[2]
execute if entity @s[type=!minecraft:arrow,type=!minecraft:ender_dragon] store result score @s rcube_dragonRework.UUID3 run data get entity @s UUID[3]
