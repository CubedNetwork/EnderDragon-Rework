# Made by: @rcube.
# Tick miniboss
#
# Called By: rcube:dragon_rework/tick
# Ran as: Entity(custom), Miniboss

# Kill End Zombie, Crystal Minion
kill @e[tag=dragon_rework.endZombie]
kill @e[tag=dragon_rework.crystal.minion]

# Crystal invunerability
execute as @e[type=minecraft:end_crystal,tag=dragon_rework.crystalInit] at @s run tag @s add dragon_rework.crystal.invulnerable
execute as @e[type=minecraft:end_crystal,tag=!dragon_rework.crystal.invulnerable] run data modify entity @s Invulnerable set value true

# Set MAD state - check
execute unless entity @s[tag=dragon_rework.minibossMAD] if entity @s[nbt=!{HandItems:[{},{id:"minecraft:totem_of_undying",Count:1b}]}] run scoreboard players set $miniboss.MAD rcube_dragonRework.store 1
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

# Remove cobwebs
execute store success score success.miniboss.cobweb rcube_dragonRework.store run fill ~8 ~8 ~8 ~-8 ~-8 ~-8 air replace minecraft:cobweb
execute if score success.miniboss.cobweb rcube_dragonRework.store matches 1 run title @a[distance=..20] times 5 20 10
execute if score success.miniboss.cobweb rcube_dragonRework.store matches 1 run title @a[distance=..20] title ""
execute if score success.miniboss.cobweb rcube_dragonRework.store matches 1 run title @a[distance=..20] subtitle {"text":"All cobwebs near miniboss will be removed","color":"red"}
execute if score success.miniboss.cobweb rcube_dragonRework.store matches 1 run scoreboard players set success.miniboss.cobweb rcube_dragonRework.store 0

# Remove anchors
execute store success score success.miniboss.respawn_anchor rcube_dragonRework.store run fill ~8 ~8 ~8 ~-8 ~-8 ~-8 air replace minecraft:respawn_anchor
execute if score success.miniboss.respawn_anchor rcube_dragonRework.store matches 1 run title @a[distance=..20] times 5 20 10
execute if score success.miniboss.respawn_anchor rcube_dragonRework.store matches 1 run title @a[distance=..20] title ""
execute if score success.miniboss.respawn_anchor rcube_dragonRework.store matches 1 run title @a[distance=..20] subtitle {"text":"All respawn anchors near miniboss will be removed","color":"red"}
execute if score success.miniboss.respawn_anchor rcube_dragonRework.store matches 1 run scoreboard players set success.miniboss.respawn_anchor rcube_dragonRework.store 0

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
# Bow
execute if score $miniboss.MAD rcube_dragonRework.store matches 1 unless entity @s[tag=dragon_rework.minibossMAD] run data merge entity @s {HandItems:[{id:"minecraft:bow",tag:{display:{Name:'["",{"text":"The Bow of Old","italic":false,"color":"dark_purple"}]'},Enchantments:[{lvl:8,id:"minecraft:power"},{lvl:4,id:"minecraft:punch"},{lvl:1,id:"minecraft:flame"},{lvl:1,id:"minecraft:infinity"}],Unbreakable:true,HideFlags:4},Count:1b},{}]}

# Armour + Red Enderman Eyes
execute if score $miniboss.MAD rcube_dragonRework.store matches 1 unless entity @s[tag=dragon_rework.minibossMAD] run data merge entity @s {ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:1908001},Enchantments:[{lvl:7,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:6,id:"minecraft:thorns"},{lvl:255,id:"minecraft:feather_falling"}],Unbreakable:true},Count:1b},{id:"minecraft:leather_leggings",tag:{display:{color:1908001},Enchantments:[{lvl:7,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:6,id:"minecraft:thorns"}],Unbreakable:true,HideFlags:4},Count:1b},{id:"minecraft:leather_chestplate",tag:{display:{color:1908001},Enchantments:[{lvl:7,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:6,id:"minecraft:thorns"}],Unbreakable:true,HideFlags:4},Count:1b},{id:"minecraft:player_head",tag:{Enchantments:[{lvl:7,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:6,id:"minecraft:thorns"}],SkullOwner:{Id:[I;1658453630,1781350791,-1964493527,-2123315747],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmJjZjNmNTc4NzE5NmQyNTZjMTA0ZmZmYWU4ZTUyNjUyNDIyMjJlMjEzOGE1N2ExNjY2YzE1YjVmNmM4N2I5OCJ9fX0="}]}}},Count:1b}]}
# execute if score $miniboss.MAD rcube_dragonRework.store matches 1 unless entity @s[tag=dragon_rework.minibossMAD] run data merge entity @s {ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:1908001},Enchantments:[{lvl:7,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:6,id:"minecraft:thorns"},{lvl:255,id:"minecraft:feather_falling"}],Unbreakable:true},Count:1b},{id:"minecraft:leather_leggings",tag:{display:{color:1908001},Enchantments:[{lvl:7,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:6,id:"minecraft:thorns"}],Unbreakable:true,HideFlags:4},Count:1b},{id:"minecraft:leather_chestplate",tag:{display:{color:1908001},Enchantments:[{lvl:7,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:6,id:"minecraft:thorns"}],Unbreakable:true,HideFlags:4},Count:1b},{id:"minecraft:player_head",tag:{Enchantments:[{lvl:7,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:6,id:"minecraft:thorns"}],SkullOwner:{Id:[I;233407588,309611990,-1146603762,-94551640],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2E1OWJiMGE3YTMyOTY1YjNkOTBkOGVhZmE4OTlkMTgzNWY0MjQ1MDllYWRkNGU2YjcwOWFkYTUwYjljZiJ9fX0="}]}}},Count:1b}]}

# #####################
# Effects
# #####################
# Tag
execute if score $miniboss.MAD rcube_dragonRework.store matches 1 run tag @s add dragon_rework.minibossMAD

# Effects
execute if entity @s[tag=dragon_rework.minibossMAD] run effect give @s speed 2 2 true
execute if entity @s[tag=dragon_rework.minibossMAD] run effect give @s strength 2 2 true
execute if entity @s[tag=dragon_rework.minibossMAD] run effect give @s resistance 2 1 true
