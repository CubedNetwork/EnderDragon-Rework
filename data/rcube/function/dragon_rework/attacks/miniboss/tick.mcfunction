# Made by: @rcube.
# Tick miniboss
#
# Called By: rcube:dragon_rework/tick
# Ran as: Entity(custom), Miniboss

# Kill End Zombie, Crystal Minion
kill @e[tag=dragon_rework.endZombie]
kill @e[tag=dragon_rework.crystal.minion]

# Crystal invunerability
execute as @e[type=minecraft:end_crystal,tag=dragon_rework.crystalInit,tag=!dragon_rework.crystal.invulnerable] run data modify entity @s Invulnerable set value true
execute as @e[type=minecraft:end_crystal,tag=dragon_rework.crystalInit,tag=!dragon_rework.crystal.invulnerable,nbt={Invulnerable:true}] at @s run tag @s add dragon_rework.crystal.invulnerable

# Set MAD state - check
execute unless entity @s[tag=dragon_rework.minibossMAD] unless items entity @s weapon.offhand minecraft:totem_of_undying run scoreboard players set $miniboss.MAD rcube_dragonRework.store 1
execute unless score $miniboss.MAD rcube_dragonRework.store matches 0..1 run scoreboard players set $miniboss.MAD rcube_dragonRework.store 0

# #####################
# Bed + Cobweb + Anchor Removal
# #####################
# Remove beds
execute store success score success.miniboss.bed rcube_dragonRework.store run fill ~8 ~8 ~8 ~-8 ~-8 ~-8 air replace #minecraft:beds
execute if score success.miniboss.bed rcube_dragonRework.store matches 1 run title @a[distance=..20] times 5 20 10
execute if score success.miniboss.bed rcube_dragonRework.store matches 1 run title @a[distance=..20] title ""
execute if score success.miniboss.bed rcube_dragonRework.store matches 1 run title @a[distance=..20] subtitle {"text":"All beds near miniboss will be removed","color":"red"}
execute if score success.miniboss.bed rcube_dragonRework.store matches 1 run scoreboard players set success.miniboss.bed rcube_dragonRework.store 0

# Remove anchors
execute store success score success.miniboss.respawn_anchor rcube_dragonRework.store run fill ~8 ~8 ~8 ~-8 ~-8 ~-8 air replace minecraft:respawn_anchor
execute if score success.miniboss.respawn_anchor rcube_dragonRework.store matches 1 run title @a[distance=..20] times 5 20 10
execute if score success.miniboss.respawn_anchor rcube_dragonRework.store matches 1 run title @a[distance=..20] title ""
execute if score success.miniboss.respawn_anchor rcube_dragonRework.store matches 1 run title @a[distance=..20] subtitle {"text":"All respawn anchors near miniboss will be removed","color":"red"}
execute if score success.miniboss.respawn_anchor rcube_dragonRework.store matches 1 run scoreboard players set success.miniboss.respawn_anchor rcube_dragonRework.store 0

# Remove cobwebs
execute store success score success.miniboss.cobweb rcube_dragonRework.store run fill ~8 ~8 ~8 ~-8 ~-8 ~-8 air replace minecraft:cobweb
execute if score success.miniboss.cobweb rcube_dragonRework.store matches 1 run title @a[distance=..20] times 5 20 10
execute if score success.miniboss.cobweb rcube_dragonRework.store matches 1 run title @a[distance=..20] title ""
execute if score success.miniboss.cobweb rcube_dragonRework.store matches 1 run title @a[distance=..20] subtitle {"text":"All cobwebs near miniboss will be removed","color":"red"}
execute if score success.miniboss.cobweb rcube_dragonRework.store matches 1 run scoreboard players set success.miniboss.cobweb rcube_dragonRework.store 0

# #####################
# Void Prevention
# #####################
# Teleport miniboss back if in void
execute store result score yPos.miniboss rcube_dragonRework.store run data get entity @s Pos[1]
execute if score yPos.miniboss rcube_dragonRework.store matches ..0 run effect give @s slow_falling 1 0 true
execute if score yPos.miniboss rcube_dragonRework.store matches ..0 run tp @s @e[tag=dragon_rework.monumentMarker,type=minecraft:marker,limit=1]

# #####################
# Regen
# #####################
execute unless entity @s[tag=dragon_rework.miniboss.init] run function rcube:dragon_rework/attacks/miniboss/regen

# #####################
# Abilities
# #####################
execute unless entity @s[tag=dragon_rework.miniboss.init] run scoreboard players set @s rcube_dragonRework.timer.attacks 900
scoreboard players remove @s[tag=dragon_rework.miniboss.init] rcube_dragonRework.timer.attacks 1
execute if entity @s[scores={rcube_dragonRework.timer.attacks=0}] run function rcube:dragon_rework/attacks/miniboss/abilities/run
execute if entity @s[scores={rcube_dragonRework.timer.attacks=..0},tag=!dragon_rework.minibossMAD] run scoreboard players set @s rcube_dragonRework.timer.attacks 900
execute if entity @s[scores={rcube_dragonRework.timer.attacks=..0},tag=dragon_rework.minibossMAD] run scoreboard players set @s rcube_dragonRework.timer.attacks 450
execute if entity @s[scores={rcube_dragonRework.timer.attacks=451..},tag=dragon_rework.minibossMAD] run scoreboard players set @s rcube_dragonRework.timer.attacks 450
tag @s add dragon_rework.miniboss.init


# ##########################
# Handle NORMAL
# ##########################

# #####################
# Effects
# #####################
execute unless score $miniboss.MAD rcube_dragonRework.store matches 1 run effect give @s speed 2 2 true
execute unless score $miniboss.MAD rcube_dragonRework.store matches 1 run effect give @s strength 2 1 true
execute unless score $miniboss.MAD rcube_dragonRework.store matches 1 run effect give @s resistance 2 0 true


# ##########################
# Handle MAD
# ##########################

# Heal + Absorbtion
execute if score $miniboss.MAD rcube_dragonRework.store matches 1 unless entity @s[tag=dragon_rework.minibossMAD] run data merge entity @s {Health:150f,AbsorptionAmount:100f}

# Fix totem visual glitch
execute if score $miniboss.MAD rcube_dragonRework.store matches 1 unless entity @s[tag=dragon_rework.minibossMAD] run item replace entity @s weapon.offhand with air

# Particles
execute if entity @s[tag=dragon_rework.minibossMAD] at @s anchored feet rotated ~ 0 run particle minecraft:angry_villager ^ ^ ^ 0.25 0.5 0.25 1 1 force

# #####################
# Buff Gear
# #####################

execute if score $miniboss.MAD rcube_dragonRework.store matches 1 unless entity @s[tag=dragon_rework.minibossMAD] run data merge entity @s {\
    HandItems:[\
        {id:"minecraft:bow",count:1,components:{\
            "minecraft:custom_name":'["",{"text":"The Bow of Old","italic":false,"color":"dark_purple"}]',\
            "minecraft:enchantments":{levels:{\
                "minecraft:power":8,"minecraft:punch":4,flame:1,infinity:1}},\
            "minecraft:unbreakable":{show_in_tooltip:false}}},\
        {}\
    ],ArmorItems:[\
        {id:"minecraft:leather_boots",count:1,components:{\
            "minecraft:dyed_color":1908001,\
            "minecraft:enchantments":{levels:{\
                "minecraft:protection":7,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":6,"minecraft:feather_falling":255}},\
            "minecraft:unbreakable":{show_in_tooltip:false}}},\
        {id:"minecraft:leather_leggings",count:1,components:{\
            "minecraft:dyed_color":1908001,\
            "minecraft:enchantments":{levels:{\
                "minecraft:protection":7,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":6}},\
            "minecraft:unbreakable":{show_in_tooltip:false}}},\
        {id:"minecraft:leather_chestplate",count:1,components:{\
            "minecraft:dyed_color":1908001,\
            "minecraft:enchantments":{levels:{\
                "minecraft:protection":7,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":6}},\
            "minecraft:unbreakable":{show_in_tooltip:false}}},\
        {id:"minecraft:player_head",components:{\
            "minecraft:enchantments":{levels:{\
                "minecraft:protection":7,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":6}},\
            "minecraft:profile":{properties:[{\
                name:"textures",\
                value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmJjZjNmNTc4NzE5NmQyNTZjMTA0ZmZmYWU4ZTUyNjUyNDIyMjJlMjEzOGE1N2ExNjY2YzE1YjVmNmM4N2I5OCJ9fX0="}],\
                id:[I;1658453630,1781350791,-1964493527,-2123315747]},\
            "minecraft:unbreakable":{show_in_tooltip:false}}}]}

# #####################
# Effects
# #####################
# Tag
execute if score $miniboss.MAD rcube_dragonRework.store matches 1 run tag @s add dragon_rework.minibossMAD

# Effects
execute if entity @s[tag=dragon_rework.minibossMAD] run effect give @s speed 2 2 true
execute if entity @s[tag=dragon_rework.minibossMAD] run effect give @s strength 2 2 true
execute if entity @s[tag=dragon_rework.minibossMAD] run effect give @s resistance 2 1 true
