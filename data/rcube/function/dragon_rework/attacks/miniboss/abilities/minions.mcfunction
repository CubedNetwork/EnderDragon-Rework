# Made by: @rcube.
# Summon miniboss' minions
#
# Called By: rcube:dragon_rework/attacks/miniboss/abilities/run
# Ran as: Entity(custom), Miniboss

# SM/Miniboss Minion 1
execute unless entity @e[tag=dragon_rework.miniboss.minion1] at @s anchored feet rotated ~ 0 run particle smoke ^10 ^-10 ^-10 0 0 0 1 100 force
execute unless entity @e[tag=dragon_rework.miniboss.minion1.1] at @s anchored feet rotated ~ 0 run summon zombie ^10 ^-10 ^-10 {DeathLootTable:"rcube:dragon_rework/empty",Fire:0,HasVisualFire:false,Health:80,PersistenceRequired:true,Silent:true,Team:"rcube.dragon_rework",Tags:["dragon_rework.miniboss.minion","dragon_rework.miniboss.minion1","dragon_rework.miniboss.minion1.1","dragon_rework.remove","dragon_rework.noFire","dragon_rework.arrowDodge"],ActiveEffects:[{Id:1,Duration:-1,Amplifier:1,ShowParticles:false},{Id:5,Duration:-1,Amplifier:0,ShowParticles:false},{Id:12,Duration:-1,Amplifier:-2,ShowParticles:false},{Id:28,Duration:1200,Amplifier:0,ShowParticles:true}],HandItems:[{id:"minecraft:diamond_sword",tag:{display:{Name:'["",{"text":"The Amputator","italic":false,"color":"blue"}]'},Enchantments:[{lvl:7,id:"minecraft:sharpness"},{lvl:3,id:"minecraft:knockback"}],Unbreakable:true,HideFlags:4},Count:1},{}],HandDropChances:[0f,0f],ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:3949738},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:2,id:"minecraft:thorns"},{lvl:255,id:"minecraft:feather_falling"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:3949738},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:2,id:"minecraft:thorns"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:3949738},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:2,id:"minecraft:thorns"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:player_head",tag:{Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:2,id:"minecraft:thorns"}],SkullOwner:{Id:[I;1316730932,1403535779,-1483116252,-490192580],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmI5ZTZhZjZiODE5ZjNkOTBlNjdjZTJlNzA1OWZiZWYzMWRhMmFhOTUzZDM1ZTM0NTRmMTAyMWZhOTEyZWZkZSJ9fX0="}]}}},Count:1}],ArmorDropChances:[0f,0f,0f,0f],Attributes:[{Name:"generic.max_health",Base:80},{Name:"generic.follow_range",Base:150}]}
execute unless entity @e[tag=dragon_rework.miniboss.minion1.2] at @s anchored feet rotated ~ 0 run summon zombie ^10 ^-10 ^-10 {DeathLootTable:"rcube:dragon_rework/empty",Fire:0,HasVisualFire:false,Health:80,PersistenceRequired:true,Silent:true,Team:"rcube.dragon_rework",Tags:["dragon_rework.miniboss.minion","dragon_rework.miniboss.minion1","dragon_rework.miniboss.minion1.2","dragon_rework.remove","dragon_rework.noFire","dragon_rework.arrowDodge"],ActiveEffects:[{Id:1,Duration:-1,Amplifier:1,ShowParticles:false},{Id:5,Duration:-1,Amplifier:0,ShowParticles:false},{Id:12,Duration:-1,Amplifier:-2,ShowParticles:false},{Id:28,Duration:1200,Amplifier:0,ShowParticles:true}],HandItems:[{id:"minecraft:diamond_sword",tag:{display:{Name:'["",{"text":"The Amputator","italic":false,"color":"blue"}]'},Enchantments:[{lvl:7,id:"minecraft:sharpness"},{lvl:3,id:"minecraft:knockback"}],Unbreakable:true,HideFlags:4},Count:1},{}],HandDropChances:[0f,0f],ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:3949738},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:2,id:"minecraft:thorns"},{lvl:255,id:"minecraft:feather_falling"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:3949738},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:2,id:"minecraft:thorns"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:3949738},Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:2,id:"minecraft:thorns"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:player_head",tag:{Enchantments:[{lvl:5,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:2,id:"minecraft:thorns"}],SkullOwner:{Id:[I;1316730932,1403535779,-1483116252,-490192580],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmI5ZTZhZjZiODE5ZjNkOTBlNjdjZTJlNzA1OWZiZWYzMWRhMmFhOTUzZDM1ZTM0NTRmMTAyMWZhOTEyZWZkZSJ9fX0="}]}}},Count:1}],ArmorDropChances:[0f,0f,0f,0f],Attributes:[{Name:"generic.max_health",Base:80},{Name:"generic.follow_range",Base:150}]}

# BM/Miniboss Minion 2
execute unless entity @e[tag=dragon_rework.miniboss.minion2] at @s anchored feet rotated ~ 0 run particle smoke ^0 ^-10 ^-10 0 0 0 1 100 force
execute unless entity @e[tag=dragon_rework.miniboss.minion2.1] at @s anchored feet rotated ~ 0 run summon skeleton ^0 ^-10 ^-10 {DeathLootTable:"rcube:dragon_rework/empty",Fire:0,HasVisualFire:false,Health:60,PersistenceRequired:true,Silent:true,Team:"rcube.dragon_rework",Tags:["dragon_rework.miniboss.minion","dragon_rework.miniboss.minion2","dragon_rework.miniboss.minion2.1","dragon_rework.remove","dragon_rework.noFire","dragon_rework.arrowDodge"],ActiveEffects:[{Id:1,Duration:-1,Amplifier:2,ShowParticles:false},{Id:5,Duration:-1,Amplifier:0,ShowParticles:false},{Id:12,Duration:-1,Amplifier:0,ShowParticles:false},{Id:28,Duration:1200,Amplifier:0,ShowParticles:true}],HandItems:[{id:"minecraft:bow",tag:{display:{Name:'["",{"text":"The Elden Bow ","italic":false,"color":"dark_purple"}]'},Enchantments:[{lvl:4,id:"minecraft:power"},{lvl:2,id:"minecraft:punch"},{lvl:1,id:"minecraft:flame"}],Unbreakable:true,HideFlags:4},Count:1},{}],HandDropChances:[0f,0f],ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:1481884},Enchantments:[{lvl:4,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:2,id:"minecraft:thorns"},{lvl:255,id:"minecraft:feather_falling"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:1481884},Enchantments:[{lvl:4,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:2,id:"minecraft:thorns"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:1481884},Enchantments:[{lvl:4,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:2,id:"minecraft:thorns"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:player_head",tag:{Enchantments:[{lvl:4,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:2,id:"minecraft:thorns"}],SkullOwner:{Id:[I;907160796,1821854615,-1727336627,-176309982],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGFhOGZjOGRlNjQxN2I0OGQ0OGM4MGI0NDNjZjUzMjZlM2Q5ZGE0ZGJlOWIyNWZjZDQ5NTQ5ZDk2MTY4ZmMwIn19fQ=="}]}}},Count:1}],ArmorDropChances:[0f,0f,0f,0f],Attributes:[{Name:"generic.max_health",Base:60},{Name:"generic.follow_range",Base:150}]}
execute unless entity @e[tag=dragon_rework.miniboss.minion2.2] at @s anchored feet rotated ~ 0 run summon skeleton ^0 ^-10 ^-10 {DeathLootTable:"rcube:dragon_rework/empty",Fire:0,HasVisualFire:false,Health:60,PersistenceRequired:true,Silent:true,Team:"rcube.dragon_rework",Tags:["dragon_rework.miniboss.minion","dragon_rework.miniboss.minion2","dragon_rework.miniboss.minion2.2","dragon_rework.remove","dragon_rework.noFire","dragon_rework.arrowDodge"],ActiveEffects:[{Id:1,Duration:-1,Amplifier:2,ShowParticles:false},{Id:5,Duration:-1,Amplifier:0,ShowParticles:false},{Id:12,Duration:-1,Amplifier:0,ShowParticles:false},{Id:28,Duration:1200,Amplifier:0,ShowParticles:true}],HandItems:[{id:"minecraft:bow",tag:{display:{Name:'["",{"text":"The Elden Bow ","italic":false,"color":"dark_purple"}]'},Enchantments:[{lvl:4,id:"minecraft:power"},{lvl:2,id:"minecraft:punch"},{lvl:1,id:"minecraft:flame"}],Unbreakable:true,HideFlags:4},Count:1},{}],HandDropChances:[0f,0f],ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:1481884},Enchantments:[{lvl:4,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:2,id:"minecraft:thorns"},{lvl:255,id:"minecraft:feather_falling"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:1481884},Enchantments:[{lvl:4,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:2,id:"minecraft:thorns"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:1481884},Enchantments:[{lvl:4,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:2,id:"minecraft:thorns"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:player_head",tag:{Enchantments:[{lvl:4,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:2,id:"minecraft:thorns"}],SkullOwner:{Id:[I;907160796,1821854615,-1727336627,-176309982],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGFhOGZjOGRlNjQxN2I0OGQ0OGM4MGI0NDNjZjUzMjZlM2Q5ZGE0ZGJlOWIyNWZjZDQ5NTQ5ZDk2MTY4ZmMwIn19fQ=="}]}}},Count:1}],ArmorDropChances:[0f,0f,0f,0f],Attributes:[{Name:"generic.max_health",Base:60},{Name:"generic.follow_range",Base:150}]}
execute unless entity @e[tag=dragon_rework.miniboss.minion2.3] at @s anchored feet rotated ~ 0 run summon skeleton ^0 ^-10 ^-10 {DeathLootTable:"rcube:dragon_rework/empty",Fire:0,HasVisualFire:false,Health:60,PersistenceRequired:true,Silent:true,Team:"rcube.dragon_rework",Tags:["dragon_rework.miniboss.minion","dragon_rework.miniboss.minion2","dragon_rework.miniboss.minion2.3","dragon_rework.remove","dragon_rework.noFire","dragon_rework.arrowDodge"],ActiveEffects:[{Id:1,Duration:-1,Amplifier:2,ShowParticles:false},{Id:5,Duration:-1,Amplifier:0,ShowParticles:false},{Id:12,Duration:-1,Amplifier:0,ShowParticles:false},{Id:28,Duration:1200,Amplifier:0,ShowParticles:true}],HandItems:[{id:"minecraft:bow",tag:{display:{Name:'["",{"text":"The Elden Bow ","italic":false,"color":"dark_purple"}]'},Enchantments:[{lvl:4,id:"minecraft:power"},{lvl:2,id:"minecraft:punch"},{lvl:1,id:"minecraft:flame"}],Unbreakable:true,HideFlags:4},Count:1},{}],HandDropChances:[0f,0f],ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:1481884},Enchantments:[{lvl:4,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:2,id:"minecraft:thorns"},{lvl:255,id:"minecraft:feather_falling"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:1481884},Enchantments:[{lvl:4,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:2,id:"minecraft:thorns"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:1481884},Enchantments:[{lvl:4,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:2,id:"minecraft:thorns"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:player_head",tag:{Enchantments:[{lvl:4,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:2,id:"minecraft:thorns"}],SkullOwner:{Id:[I;907160796,1821854615,-1727336627,-176309982],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGFhOGZjOGRlNjQxN2I0OGQ0OGM4MGI0NDNjZjUzMjZlM2Q5ZGE0ZGJlOWIyNWZjZDQ5NTQ5ZDk2MTY4ZmMwIn19fQ=="}]}}},Count:1}],ArmorDropChances:[0f,0f,0f,0f],Attributes:[{Name:"generic.max_health",Base:60},{Name:"generic.follow_range",Base:150}]}

# PM/Miniboss Minion 3
execute unless entity @e[tag=dragon_rework.miniboss.minion3] at @s anchored feet rotated ~ 0 run particle smoke ^-10 ^-10 ^-10 0 0 0 1 100 force
execute unless entity @e[tag=dragon_rework.miniboss.minion3.1] at @s anchored feet rotated ~ 0 run summon witch ^-10 ^-10 ^-10 {DeathLootTable:"rcube:dragon_rework/empty",Fire:0,HasVisualFire:true,Health:40,PersistenceRequired:true,Silent:true,Team:"rcube.dragon_rework",Tags:["dragon_rework.miniboss.minion","dragon_rework.miniboss.minion3","dragon_rework.miniboss.minion3.1","dragon_rework.remove","dragon_rework.arrowDodge"],ActiveEffects:[{Id:1,Duration:-1,Amplifier:4,ShowParticles:false},{Id:11,Duration:-1,Amplifier:0,ShowParticles:false},{Id:12,Duration:-1,Amplifier:0,ShowParticles:false},{Id:28,Duration:1200,Amplifier:0,ShowParticles:true}],ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:4673362},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:3,id:"minecraft:thorns"},{lvl:255,id:"minecraft:feather_falling"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:4673362},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:3,id:"minecraft:thorns"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:4673362},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:3,id:"minecraft:thorns"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:player_head",tag:{Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:3,id:"minecraft:thorns"}],SkullOwner:{Id:[I;1316730932,1403535779,-1483116252,-490192580],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmI5ZTZhZjZiODE5ZjNkOTBlNjdjZTJlNzA1OWZiZWYzMWRhMmFhOTUzZDM1ZTM0NTRmMTAyMWZhOTEyZWZkZSJ9fX0="}]}}},Count:1}],ArmorDropChances:[0f,0f,0f,0f],Attributes:[{Name:"generic.max_health",Base:40},{Name:"generic.follow_range",Base:150}]}
execute unless entity @e[tag=dragon_rework.miniboss.minion3.2] at @s anchored feet rotated ~ 0 run summon witch ^-10 ^-10 ^-10 {DeathLootTable:"rcube:dragon_rework/empty",Fire:0,HasVisualFire:true,Health:40,PersistenceRequired:true,Silent:true,Team:"rcube.dragon_rework",Tags:["dragon_rework.miniboss.minion","dragon_rework.miniboss.minion3","dragon_rework.miniboss.minion3.2","dragon_rework.remove","dragon_rework.arrowDodge"],ActiveEffects:[{Id:1,Duration:-1,Amplifier:4,ShowParticles:false},{Id:11,Duration:-1,Amplifier:0,ShowParticles:false},{Id:12,Duration:-1,Amplifier:0,ShowParticles:false},{Id:28,Duration:1200,Amplifier:0,ShowParticles:true}],ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:4673362},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:3,id:"minecraft:thorns"},{lvl:255,id:"minecraft:feather_falling"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:4673362},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:3,id:"minecraft:thorns"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:4673362},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:3,id:"minecraft:thorns"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:player_head",tag:{Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:3,id:"minecraft:thorns"}],SkullOwner:{Id:[I;1316730932,1403535779,-1483116252,-490192580],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmI5ZTZhZjZiODE5ZjNkOTBlNjdjZTJlNzA1OWZiZWYzMWRhMmFhOTUzZDM1ZTM0NTRmMTAyMWZhOTEyZWZkZSJ9fX0="}]}}},Count:1}],ArmorDropChances:[0f,0f,0f,0f],Attributes:[{Name:"generic.max_health",Base:40},{Name:"generic.follow_range",Base:150}]}
execute unless entity @e[tag=dragon_rework.miniboss.minion3.3] at @s anchored feet rotated ~ 0 run summon witch ^-10 ^-10 ^-10 {DeathLootTable:"rcube:dragon_rework/empty",Fire:0,HasVisualFire:true,Health:40,PersistenceRequired:true,Silent:true,Team:"rcube.dragon_rework",Tags:["dragon_rework.miniboss.minion","dragon_rework.miniboss.minion3","dragon_rework.miniboss.minion3.3","dragon_rework.remove","dragon_rework.arrowDodge"],ActiveEffects:[{Id:1,Duration:-1,Amplifier:4,ShowParticles:false},{Id:11,Duration:-1,Amplifier:0,ShowParticles:false},{Id:12,Duration:-1,Amplifier:0,ShowParticles:false},{Id:28,Duration:1200,Amplifier:0,ShowParticles:true}],ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:4673362},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:3,id:"minecraft:thorns"},{lvl:255,id:"minecraft:feather_falling"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:4673362},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:3,id:"minecraft:thorns"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:4673362},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:3,id:"minecraft:thorns"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:player_head",tag:{Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:3,id:"minecraft:thorns"}],SkullOwner:{Id:[I;1316730932,1403535779,-1483116252,-490192580],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmI5ZTZhZjZiODE5ZjNkOTBlNjdjZTJlNzA1OWZiZWYzMWRhMmFhOTUzZDM1ZTM0NTRmMTAyMWZhOTEyZWZkZSJ9fX0="}]}}},Count:1}],ArmorDropChances:[0f,0f,0f,0f],Attributes:[{Name:"generic.max_health",Base:40},{Name:"generic.follow_range",Base:150}]}
