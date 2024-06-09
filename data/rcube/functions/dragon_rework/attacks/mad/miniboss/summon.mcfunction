# Made by: @rcube.
# Spawn miniboss
#
# Called By: rcube:dragon_rework/tick
# Ran as: Entity, Ender Dragon (dragonInit = true)           

execute at @e[tag=dragon_rework.monumentMarker,limit=1] unless entity @s[tag=dragon_rework.spawnedMiniboss] unless entity @e[tag=dragon_rework.miniboss] run summon skeleton ~ ~ ~ {Fire:0,HasVisualFire:0b,CustomName:'[{"text":"Warrior of the Years Past","color":"yellow","bold":true}]',CustomNameVisible:1b,Health:150,Glowing:1b,PersistenceRequired:1b,Tags:["dragon_rework.miniboss","dragon_rework.removeAfterDeath","dragon_rework.arrowDodge"],HandItems:[{id:"minecraft:bow",tag:{display:{Name:'["",{"text":"The Bow of Old","italic":false,"color":"dark_purple"}]'},Enchantments:[{lvl:7,id:"minecraft:power"},{lvl:3,id:"minecraft:punch"},{lvl:1,id:"minecraft:flame"},{lvl:1,id:"minecraft:infinity"}],Unbreakable:1,HideFlags:4},Count:1b},{id:"minecraft:totem_of_undying",Count:1b}],HandDropChances:[0f,0f],ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:1908001},Enchantments:[{lvl:6,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:thorns"},{lvl:255,id:"minecraft:feather_falling"}],Unbreakable:1},Count:1b},{id:"minecraft:leather_leggings",tag:{display:{color:1908001},Enchantments:[{lvl:6,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:thorns"}],Unbreakable:1,HideFlags:4},Count:1b},{id:"minecraft:leather_chestplate",tag:{display:{color:1908001},Enchantments:[{lvl:6,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:thorns"}],Unbreakable:1,HideFlags:4},Count:1b},{id:"minecraft:player_head",tag:{Enchantments:[{lvl:6,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:thorns"}],SkullOwner:{Id:[I;233407588,309611990,-1146603762,-94551640],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2E1OWJiMGE3YTMyOTY1YjNkOTBkOGVhZmE4OTlkMTgzNWY0MjQ1MDllYWRkNGU2YjcwOWFkYTUwYjljZiJ9fX0="}]}}},Count:1b}],ArmorDropChances:[0f,0f,0f,0f],Attributes:[{Name:"generic.max_health",Base:150},{Name:"generic.follow_range",Base:100},{Name:"generic.movement_speed",Base:2}]}
execute unless entity @s[tag=dragon_rework.spawnedMiniboss] run tag @s add dragon_rework.spawnedMiniboss

execute if entity @e[tag=dragon_rework.miniboss,limit=1] as @e[tag=dragon_rework.miniboss,limit=1] run schedule function rcube:dragon_rework/attacks/mad/miniboss/tick 1t