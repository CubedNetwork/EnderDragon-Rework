# Made by: @rcube.
# Tick miniboss
#
# Called By: rcube:dragon_rework/attacks/mad/miniboss/summon (If miniboss exists)
# Ran as: Entity(custom), Miniboss

# #####################
# Abilities
# #####################
scoreboard players remove @s rcube_dragonRework.timer.attacks 1
execute if entity @s[scores={rcube_dragonRework.timer.attacks=0}] run function rcube:dragon_rework/attacks/do
execute if entity @s[scores={rcube_dragonRework.timer.attacks=0}] run scoreboard players set @s rcube_dragonRework.timer.attacks 900



# ##########################
# Handle NORMAL
# ##########################

# #####################
# Effects
# #####################
execute if entity @s[nbt={HandItems:[{},{id:"minecraft:totem_of_undying",Count:1b}]}] run effect give @s speed 2 2 true
execute if entity @s[nbt={HandItems:[{},{id:"minecraft:totem_of_undying",Count:1b}]}] run effect give @s strength 2 1 true
execute if entity @s[nbt={HandItems:[{},{id:"minecraft:totem_of_undying",Count:1b}]}] run effect give @s resistance 2 0 true


# ##########################
# Handle MAD
# ##########################

# Heal
execute if entity @s[nbt=!{HandItems:[{},{id:"minecraft:totem_of_undying",Count:1b}]}] unless entity @s[tag=dragon_rework.minibossMAD] run effect give @s instant_damage 1 9 true

# Fix totem visual glitch
item replace entity @s weapon.offhand with air

# #####################
# Buff Gear
# #####################
# Bow
execute if entity @s[nbt=!{HandItems:[{},{id:"minecraft:totem_of_undying",Count:1b}]}] unless entity @s[tag=dragon_rework.minibossMAD] run data merge entity @s {HandItems:[{id:"minecraft:bow",tag:{display:{Name:'["",{"text":"The Bow of Old","italic":false,"color":"dark_purple"}]'},Enchantments:[{lvl:8,id:"minecraft:power"},{lvl:4,id:"minecraft:punch"},{lvl:1,id:"minecraft:flame"},{lvl:1,id:"minecraft:infinity"}],Unbreakable:1,HideFlags:4},Count:1b}]}

# Armour + Red Enderman Eyes
execute if entity @s[nbt=!{HandItems:[{},{id:"minecraft:totem_of_undying",Count:1b}]}] unless entity @s[tag=dragon_rework.minibossMAD] run data merge entity @s {ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:1908001},Enchantments:[{lvl:7,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:6,id:"minecraft:thorns"},{lvl:255,id:"minecraft:feather_falling"}],Unbreakable:1},Count:1b},{id:"minecraft:leather_leggings",tag:{display:{color:1908001},Enchantments:[{lvl:7,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:6,id:"minecraft:thorns"}],Unbreakable:1,HideFlags:4},Count:1b},{id:"minecraft:leather_chestplate",tag:{display:{color:1908001},Enchantments:[{lvl:7,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:6,id:"minecraft:thorns"}],Unbreakable:1,HideFlags:4},Count:1b},{id:"minecraft:player_head",tag:{Enchantments:[{lvl:7,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:6,id:"minecraft:thorns"}],SkullOwner:{Id:[I;1658453630,1781350791,-1964493527,-2123315747],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmJjZjNmNTc4NzE5NmQyNTZjMTA0ZmZmYWU4ZTUyNjUyNDIyMjJlMjEzOGE1N2ExNjY2YzE1YjVmNmM4N2I5OCJ9fX0="}]}}},Count:1b}]}
# execute if entity @s[nbt=!{HandItems:[{},{id:"minecraft:totem_of_undying",Count:1b}]}] unless entity @s[tag=dragon_rework.minibossMAD] run data merge entity @s {ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:1908001},Enchantments:[{lvl:7,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:6,id:"minecraft:thorns"},{lvl:255,id:"minecraft:feather_falling"}],Unbreakable:1},Count:1b},{id:"minecraft:leather_leggings",tag:{display:{color:1908001},Enchantments:[{lvl:7,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:6,id:"minecraft:thorns"}],Unbreakable:1,HideFlags:4},Count:1b},{id:"minecraft:leather_chestplate",tag:{display:{color:1908001},Enchantments:[{lvl:7,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:6,id:"minecraft:thorns"}],Unbreakable:1,HideFlags:4},Count:1b},{id:"minecraft:player_head",tag:{Enchantments:[{lvl:7,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:6,id:"minecraft:thorns"}],SkullOwner:{Id:[I;233407588,309611990,-1146603762,-94551640],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2E1OWJiMGE3YTMyOTY1YjNkOTBkOGVhZmE4OTlkMTgzNWY0MjQ1MDllYWRkNGU2YjcwOWFkYTUwYjljZiJ9fX0="}]}}},Count:1b}]}

# #####################
# Effects
# #####################
# Tag
execute if entity @s[nbt=!{HandItems:[{},{id:"minecraft:totem_of_undying",Count:1b}]}] run tag @s add dragon_rework.minibossMAD


# Effects
execute if entity @s[tag=dragon_rework.minibossMAD] run effect give @s speed 2 2 true
execute if entity @s[tag=dragon_rework.minibossMAD] run effect give @s strength 2 2 true
execute if entity @s[tag=dragon_rework.minibossMAD] run effect give @s resistance 2 1 true


# Loop
schedule function rcube:dragon_rework/attacks/mad/miniboss/tick 1t replace