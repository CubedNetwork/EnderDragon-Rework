# Made by: @rcube.
# Okay, dragon has been ticked off. time to do a really epic
#
# Called By: rcube:dragon_rework/attacks/mad/miniboss/do
# Ran as: Entity(custom), Miniboss

# BM/Miniboss Minion 1
execute unless entity @e[tag=dragon_rework.miniboss.minion1] at @s anchored feet rotated ~ 0 run particle smoke ^10 ^-10 ^-10 0 0 0 1 100 force
execute unless entity @e[tag=dragon_rework.miniboss.minion1.1] at @s anchored feet rotated ~ 0 run summon zombie ^10 ^-10 ^-10 {Fire:0,HasVisualFire:0,Health:80,Glowing:1b,Silent:1b,Tags:["dragon_rework.miniboss.minion","dragon_rework.miniboss.minion1","dragon_rework.miniboss.minion1.1","dragon_rework.remove","dragon_rework.arrowDodge","dragon_rework.floor.spawn"],ActiveEffects:[{Id:1,Duration:-1,Amplifier:1,ShowParticles:0b},{Id:5,Duration:-1,Amplifier:0,ShowParticles:0b},{Id:12,Duration:-1,Amplifier:-2,ShowParticles:0b},{Id:28,Duration:1200,Amplifier:0,ShowParticles:1b}],HandItems:[{id:"minecraft:diamond_sword",tag:{display:{Name:'["",{"text":"The Sword of Great","italic":false,"color":"blue"}]'},Enchantments:[{lvl:3,id:"minecraft:sharpness"},{lvl:3,id:"minecraft:knockback"}],Unbreakable:1,HideFlags:4},Count:1}],HandDropChances:[0f],ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:9437438},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:10,id:"minecraft:thorns"},{lvl:255,id:"minecraft:feather_falling"}],Unbreakable:1,HideFlags:4},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:9437438},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:10,id:"minecraft:thorns"}],Unbreakable:1,HideFlags:4},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:9437438},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:10,id:"minecraft:thorns"}],Unbreakable:1,HideFlags:4},Count:1},{id:"minecraft:player_head",tag:{Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:2,id:"minecraft:thorns"}],SkullOwner:{Id:[I;1316730932,1403535779,-1483116252,-490192580],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmI5ZTZhZjZiODE5ZjNkOTBlNjdjZTJlNzA1OWZiZWYzMWRhMmFhOTUzZDM1ZTM0NTRmMTAyMWZhOTEyZWZkZSJ9fX0="}]}}},Count:1}],ArmorDropChances:[0f,0f,0f,0f],Attributes:[{Name:"generic.max_health",Base:80},{Name:"generic.follow_range",Base:150}]}
execute unless entity @e[tag=dragon_rework.miniboss.minion1.2] at @s anchored feet rotated ~ 0 run summon zombie ^10 ^-10 ^-10 {Fire:0,HasVisualFire:0,Health:80,Glowing:1b,Silent:1b,Tags:["dragon_rework.miniboss.minion","dragon_rework.miniboss.minion1","dragon_rework.miniboss.minion1.2","dragon_rework.remove","dragon_rework.arrowDodge","dragon_rework.floor.spawn"],ActiveEffects:[{Id:1,Duration:-1,Amplifier:1,ShowParticles:0b},{Id:5,Duration:-1,Amplifier:0,ShowParticles:0b},{Id:12,Duration:-1,Amplifier:-2,ShowParticles:0b},{Id:28,Duration:1200,Amplifier:0,ShowParticles:1b}],HandItems:[{id:"minecraft:diamond_sword",tag:{display:{Name:'["",{"text":"The Sword of Great","italic":false,"color":"blue"}]'},Enchantments:[{lvl:3,id:"minecraft:sharpness"},{lvl:3,id:"minecraft:knockback"}],Unbreakable:1,HideFlags:4},Count:1}],HandDropChances:[0f],ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:9437438},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:10,id:"minecraft:thorns"},{lvl:255,id:"minecraft:feather_falling"}],Unbreakable:1,HideFlags:4},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:9437438},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:10,id:"minecraft:thorns"}],Unbreakable:1,HideFlags:4},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:9437438},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:10,id:"minecraft:thorns"}],Unbreakable:1,HideFlags:4},Count:1},{id:"minecraft:player_head",tag:{Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:2,id:"minecraft:thorns"}],SkullOwner:{Id:[I;1316730932,1403535779,-1483116252,-490192580],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmI5ZTZhZjZiODE5ZjNkOTBlNjdjZTJlNzA1OWZiZWYzMWRhMmFhOTUzZDM1ZTM0NTRmMTAyMWZhOTEyZWZkZSJ9fX0="}]}}},Count:1}],ArmorDropChances:[0f,0f,0f,0f],Attributes:[{Name:"generic.max_health",Base:80},{Name:"generic.follow_range",Base:150}]}

# BM/Miniboss Minion 2
execute unless entity @e[tag=dragon_rework.miniboss.minion2] at @s anchored feet rotated ~ 0 run particle smoke ^0 ^-10 ^-10 0 0 0 1 100 force
execute unless entity @e[tag=dragon_rework.miniboss.minion2.1] at @s anchored feet rotated ~ 0 run summon skeleton ^0 ^-10 ^-10 {Fire:0,HasVisualFire:0,Health:60,Glowing:1b,Silent:1b,Tags:["dragon_rework.miniboss.minion","dragon_rework.miniboss.minion2","dragon_rework.miniboss.minion2.1","dragon_rework.remove","dragon_rework.arrowDodge","dragon_rework.floor.spawn"],ActiveEffects:[{Id:1,Duration:-1,Amplifier:2,ShowParticles:0b},{Id:5,Duration:-1,Amplifier:0,ShowParticles:0b},{Id:12,Duration:-1,Amplifier:0,ShowParticles:0b},{Id:28,Duration:1200,Amplifier:0,ShowParticles:1b}],HandItems:[{id:"minecraft:bow",tag:{display:{Name:'["",{"text":"The Elden Bow ","italic":false,"color":"dark_purple"}]'},Enchantments:[{lvl:1,id:"minecraft:flame"},{lvl:4,id:"minecraft:power"},{lvl:2,id:"minecraft:punch"}],Unbreakable:1,HideFlags:4},Count:1}],HandDropChances:[0f],ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:9437438},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:10,id:"minecraft:thorns"},{lvl:255,id:"minecraft:feather_falling"}],Unbreakable:1,HideFlags:4},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:9437438},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:10,id:"minecraft:thorns"}],Unbreakable:1,HideFlags:4},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:9437438},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:10,id:"minecraft:thorns"}],Unbreakable:1,HideFlags:4},Count:1},{id:"minecraft:player_head",tag:{Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:2,id:"minecraft:thorns"}],SkullOwner:{Id:[I;1316730932,1403535779,-1483116252,-490192580],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmI5ZTZhZjZiODE5ZjNkOTBlNjdjZTJlNzA1OWZiZWYzMWRhMmFhOTUzZDM1ZTM0NTRmMTAyMWZhOTEyZWZkZSJ9fX0="}]}}},Count:1}],ArmorDropChances:[0f,0f,0f,0f],Attributes:[{Name:"generic.max_health",Base:60},{Name:"generic.follow_range",Base:150}]}
execute unless entity @e[tag=dragon_rework.miniboss.minion2.2] at @s anchored feet rotated ~ 0 run summon skeleton ^0 ^-10 ^-10 {Fire:0,HasVisualFire:0,Health:60,Glowing:1b,Silent:1b,Tags:["dragon_rework.miniboss.minion","dragon_rework.miniboss.minion2","dragon_rework.miniboss.minion2.2","dragon_rework.remove","dragon_rework.arrowDodge","dragon_rework.floor.spawn"],ActiveEffects:[{Id:1,Duration:-1,Amplifier:2,ShowParticles:0b},{Id:5,Duration:-1,Amplifier:0,ShowParticles:0b},{Id:12,Duration:-1,Amplifier:0,ShowParticles:0b},{Id:28,Duration:1200,Amplifier:0,ShowParticles:1b}],HandItems:[{id:"minecraft:bow",tag:{display:{Name:'["",{"text":"The Elden Bow ","italic":false,"color":"dark_purple"}]'},Enchantments:[{lvl:1,id:"minecraft:flame"},{lvl:4,id:"minecraft:power"},{lvl:2,id:"minecraft:punch"}],Unbreakable:1,HideFlags:4},Count:1}],HandDropChances:[0f],ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:9437438},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:10,id:"minecraft:thorns"},{lvl:255,id:"minecraft:feather_falling"}],Unbreakable:1,HideFlags:4},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:9437438},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:10,id:"minecraft:thorns"}],Unbreakable:1,HideFlags:4},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:9437438},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:10,id:"minecraft:thorns"}],Unbreakable:1,HideFlags:4},Count:1},{id:"minecraft:player_head",tag:{Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:2,id:"minecraft:thorns"}],SkullOwner:{Id:[I;1316730932,1403535779,-1483116252,-490192580],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmI5ZTZhZjZiODE5ZjNkOTBlNjdjZTJlNzA1OWZiZWYzMWRhMmFhOTUzZDM1ZTM0NTRmMTAyMWZhOTEyZWZkZSJ9fX0="}]}}},Count:1}],ArmorDropChances:[0f,0f,0f,0f],Attributes:[{Name:"generic.max_health",Base:60},{Name:"generic.follow_range",Base:150}]}
execute unless entity @e[tag=dragon_rework.miniboss.minion2.3] at @s anchored feet rotated ~ 0 run summon skeleton ^0 ^-10 ^-10 {Fire:0,HasVisualFire:0,Health:60,Glowing:1b,Silent:1b,Tags:["dragon_rework.miniboss.minion","dragon_rework.miniboss.minion2","dragon_rework.miniboss.minion2.3","dragon_rework.remove","dragon_rework.arrowDodge","dragon_rework.floor.spawn"],ActiveEffects:[{Id:1,Duration:-1,Amplifier:2,ShowParticles:0b},{Id:5,Duration:-1,Amplifier:0,ShowParticles:0b},{Id:12,Duration:-1,Amplifier:0,ShowParticles:0b},{Id:28,Duration:1200,Amplifier:0,ShowParticles:1b}],HandItems:[{id:"minecraft:bow",tag:{display:{Name:'["",{"text":"The Elden Bow ","italic":false,"color":"dark_purple"}]'},Enchantments:[{lvl:1,id:"minecraft:flame"},{lvl:4,id:"minecraft:power"},{lvl:2,id:"minecraft:punch"}],Unbreakable:1,HideFlags:4},Count:1}],HandDropChances:[0f],ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:9437438},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:10,id:"minecraft:thorns"},{lvl:255,id:"minecraft:feather_falling"}],Unbreakable:1,HideFlags:4},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:9437438},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:10,id:"minecraft:thorns"}],Unbreakable:1,HideFlags:4},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:9437438},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:10,id:"minecraft:thorns"}],Unbreakable:1,HideFlags:4},Count:1},{id:"minecraft:player_head",tag:{Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:2,id:"minecraft:thorns"}],SkullOwner:{Id:[I;1316730932,1403535779,-1483116252,-490192580],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmI5ZTZhZjZiODE5ZjNkOTBlNjdjZTJlNzA1OWZiZWYzMWRhMmFhOTUzZDM1ZTM0NTRmMTAyMWZhOTEyZWZkZSJ9fX0="}]}}},Count:1}],ArmorDropChances:[0f,0f,0f,0f],Attributes:[{Name:"generic.max_health",Base:60},{Name:"generic.follow_range",Base:150}]}

# PM/Miniboss Minion 3
execute unless entity @e[tag=dragon_rework.miniboss.minion3] at @s anchored feet rotated ~ 0 run particle smoke ^-10 ^-10 ^-10 0 0 0 1 100 force
execute unless entity @e[tag=dragon_rework.miniboss.minion3.1] at @s anchored feet rotated ~ 0 run summon witch ^-10 ^-10 ^-10 {Fire:0,HasVisualFire:1,Health:40,Glowing:1b,Silent:1b,Tags:["dragon_rework.miniboss.minion","dragon_rework.miniboss.minion3","dragon_rework.miniboss.minion2.1","dragon_rework.remove","dragon_rework.arrowDodge","dragon_rework.floor.spawn"],ActiveEffects:[{Id:1,Duration:-1,Amplifier:4,ShowParticles:0b},{Id:11,Duration:-1,Amplifier:0,ShowParticles:0b},{Id:12,Duration:-1,Amplifier:0,ShowParticles:0b},{Id:28,Duration:1200,Amplifier:0,ShowParticles:1b}],ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:9437438},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:10,id:"minecraft:thorns"},{lvl:255,id:"minecraft:feather_falling"}],Unbreakable:1,HideFlags:4},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:9437438},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:10,id:"minecraft:thorns"}],Unbreakable:1,HideFlags:4},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:9437438},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:10,id:"minecraft:thorns"}],Unbreakable:1,HideFlags:4},Count:1},{id:"minecraft:player_head",tag:{Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:2,id:"minecraft:thorns"}],SkullOwner:{Id:[I;1316730932,1403535779,-1483116252,-490192580],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmI5ZTZhZjZiODE5ZjNkOTBlNjdjZTJlNzA1OWZiZWYzMWRhMmFhOTUzZDM1ZTM0NTRmMTAyMWZhOTEyZWZkZSJ9fX0="}]}}},Count:1}],ArmorDropChances:[0f,0f,0f,0f],Attributes:[{Name:"generic.max_health",Base:40},{Name:"generic.follow_range",Base:150}]}
execute unless entity @e[tag=dragon_rework.miniboss.minion3.2] at @s anchored feet rotated ~ 0 run summon witch ^-10 ^-10 ^-10 {Fire:0,HasVisualFire:1,Health:40,Glowing:1b,Silent:1b,Tags:["dragon_rework.miniboss.minion","dragon_rework.miniboss.minion3","dragon_rework.miniboss.minion2.2","dragon_rework.remove","dragon_rework.arrowDodge","dragon_rework.floor.spawn"],ActiveEffects:[{Id:1,Duration:-1,Amplifier:4,ShowParticles:0b},{Id:11,Duration:-1,Amplifier:0,ShowParticles:0b},{Id:12,Duration:-1,Amplifier:0,ShowParticles:0b},{Id:28,Duration:1200,Amplifier:0,ShowParticles:1b}],ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:9437438},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:10,id:"minecraft:thorns"},{lvl:255,id:"minecraft:feather_falling"}],Unbreakable:1,HideFlags:4},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:9437438},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:10,id:"minecraft:thorns"}],Unbreakable:1,HideFlags:4},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:9437438},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:10,id:"minecraft:thorns"}],Unbreakable:1,HideFlags:4},Count:1},{id:"minecraft:player_head",tag:{Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:2,id:"minecraft:thorns"}],SkullOwner:{Id:[I;1316730932,1403535779,-1483116252,-490192580],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmI5ZTZhZjZiODE5ZjNkOTBlNjdjZTJlNzA1OWZiZWYzMWRhMmFhOTUzZDM1ZTM0NTRmMTAyMWZhOTEyZWZkZSJ9fX0="}]}}},Count:1}],ArmorDropChances:[0f,0f,0f,0f],Attributes:[{Name:"generic.max_health",Base:40},{Name:"generic.follow_range",Base:150}]}
execute unless entity @e[tag=dragon_rework.miniboss.minion3.3] at @s anchored feet rotated ~ 0 run summon witch ^-10 ^-10 ^-10 {Fire:0,HasVisualFire:1,Health:40,Glowing:1b,Silent:1b,Tags:["dragon_rework.miniboss.minion","dragon_rework.miniboss.minion3","dragon_rework.miniboss.minion2.3","dragon_rework.remove","dragon_rework.arrowDodge","dragon_rework.floor.spawn"],ActiveEffects:[{Id:1,Duration:-1,Amplifier:4,ShowParticles:0b},{Id:11,Duration:-1,Amplifier:0,ShowParticles:0b},{Id:12,Duration:-1,Amplifier:0,ShowParticles:0b},{Id:28,Duration:1200,Amplifier:0,ShowParticles:1b}],ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:9437438},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:10,id:"minecraft:thorns"},{lvl:255,id:"minecraft:feather_falling"}],Unbreakable:1,HideFlags:4},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:9437438},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:10,id:"minecraft:thorns"}],Unbreakable:1,HideFlags:4},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:9437438},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:10,id:"minecraft:thorns"}],Unbreakable:1,HideFlags:4},Count:1},{id:"minecraft:player_head",tag:{Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:2,id:"minecraft:thorns"}],SkullOwner:{Id:[I;1316730932,1403535779,-1483116252,-490192580],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmI5ZTZhZjZiODE5ZjNkOTBlNjdjZTJlNzA1OWZiZWYzMWRhMmFhOTUzZDM1ZTM0NTRmMTAyMWZhOTEyZWZkZSJ9fX0="}]}}},Count:1}],ArmorDropChances:[0f,0f,0f,0f],Attributes:[{Name:"generic.max_health",Base:40},{Name:"generic.follow_range",Base:150}]}