# Made by: @rcube.
# Spawn End Zombies
#
# Called By: rcube:dragon_rework/attacks/do
# Ran as: Entity, Ender Dragon (scores={rcube_dragonRework.phase=2})

# Speed 2, slow falling 2
execute unless score Entity.EndZombie rcube_dragonRework.store matches 60.. run particle smoke ~10 ~-10 ~ 0 0 0 1 100 force
execute unless score Entity.EndZombie rcube_dragonRework.store matches 60.. run summon zombie ~10 ~-10 ~ {Fire:0,HasVisualFire:false,Team:"rcube.dragon_rework",Tags:["dragon_rework.endZombie","dragon_rework.arrowDodge","dragon_rework.floor.spawn","dragon_rework.remove"],CustomName:'{"text":"End Zombie","color":"dark_purple","italic":false,"bold":true}',HandItems:[{id:"minecraft:diamond_sword",tag:{Enchantments:[{lvl:3,id:"minecraft:sharpness"},{lvl:3,id:"minecraft:knockback"}],Unbreakable:true,HideFlags:4},Count:1},{}],HandDropChances:[0f,0f],ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:9437439},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:thorns"},{lvl:255,id:"minecraft:feather_falling"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:9437439},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:blast_protection},{lvl:255,id:fire_protection},{lvl:255,id:projectile_protection},{lvl:5,id:thorns}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:9437439},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:thorns"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:player_head",tag:{Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:thorns"}],SkullOwner:{Id:[I;1997616500,1498695944,-1466020404,1481973358],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTJhZjYyMzE4OTBiNjQ4MWFkN2Y5NWQxNTBhYzRkNDM3NDA1ODFlZjhiYTA3OTQ0ODc4M2VmYmVlOGVlZjljMCJ9fX0="}]}}},Count:1}],ArmorDropChances:[0f,0f,0f,0f],ActiveEffects:[{Id:1,Duration:-1,Amplifier:2,ShowParticles:false},{Id:5,Duration:-1,Amplifier:0,ShowParticles:false},{Id:12,Duration:-1,Amplifier:-1,ShowParticles:true},{Id:28,Duration:1200,Amplifier:1,ShowParticles:false}]}
execute unless score Entity.EndZombie rcube_dragonRework.store matches 60.. run summon zombie ~10 ~-10 ~ {Fire:0,HasVisualFire:false,Team:"rcube.dragon_rework",Tags:["dragon_rework.endZombie","dragon_rework.arrowDodge","dragon_rework.floor.spawn","dragon_rework.remove"],CustomName:'{"text":"End Zombie","color":"dark_purple","italic":false,"bold":true}',HandItems:[{id:"minecraft:diamond_sword",tag:{Enchantments:[{lvl:3,id:"minecraft:sharpness"},{lvl:3,id:"minecraft:knockback"}],Unbreakable:true,HideFlags:4},Count:1},{}],HandDropChances:[0f,0f],ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:9437439},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:thorns"},{lvl:255,id:"minecraft:feather_falling"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:9437439},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:blast_protection},{lvl:255,id:fire_protection},{lvl:255,id:projectile_protection},{lvl:5,id:thorns}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:9437439},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:thorns"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:player_head",tag:{Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:thorns"}],SkullOwner:{Id:[I;1997616500,1498695944,-1466020404,1481973358],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTJhZjYyMzE4OTBiNjQ4MWFkN2Y5NWQxNTBhYzRkNDM3NDA1ODFlZjhiYTA3OTQ0ODc4M2VmYmVlOGVlZjljMCJ9fX0="}]}}},Count:1}],ArmorDropChances:[0f,0f,0f,0f],ActiveEffects:[{Id:1,Duration:-1,Amplifier:2,ShowParticles:false},{Id:5,Duration:-1,Amplifier:0,ShowParticles:false},{Id:12,Duration:-1,Amplifier:-1,ShowParticles:true},{Id:28,Duration:1200,Amplifier:1,ShowParticles:false}]}

execute unless score Entity.EndZombie rcube_dragonRework.store matches 60.. run particle smoke ~-10 ~-10 ~ 0 0 0 1 100 force
execute unless score Entity.EndZombie rcube_dragonRework.store matches 60.. run summon zombie ~-10 ~-10 ~ {Fire:0,HasVisualFire:false,Team:"rcube.dragon_rework",Tags:["dragon_rework.endZombie","dragon_rework.arrowDodge","dragon_rework.floor.spawn","dragon_rework.remove"],CustomName:'{"text":"End Zombie","color":"dark_purple","italic":false,"bold":true}',HandItems:[{id:"minecraft:diamond_sword",tag:{Enchantments:[{lvl:3,id:"minecraft:sharpness"},{lvl:3,id:"minecraft:knockback"}],Unbreakable:true,HideFlags:4},Count:1},{}],HandDropChances:[0f,0f],ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:9437439},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:thorns"},{lvl:255,id:"minecraft:feather_falling"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:9437439},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:blast_protection},{lvl:255,id:fire_protection},{lvl:255,id:projectile_protection},{lvl:5,id:thorns}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:9437439},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:thorns"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:player_head",tag:{Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:thorns"}],SkullOwner:{Id:[I;1997616500,1498695944,-1466020404,1481973358],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTJhZjYyMzE4OTBiNjQ4MWFkN2Y5NWQxNTBhYzRkNDM3NDA1ODFlZjhiYTA3OTQ0ODc4M2VmYmVlOGVlZjljMCJ9fX0="}]}}},Count:1}],ArmorDropChances:[0f,0f,0f,0f],ActiveEffects:[{Id:1,Duration:-1,Amplifier:2,ShowParticles:false},{Id:5,Duration:-1,Amplifier:0,ShowParticles:false},{Id:12,Duration:-1,Amplifier:-1,ShowParticles:true},{Id:28,Duration:1200,Amplifier:1,ShowParticles:false}]}
execute unless score Entity.EndZombie rcube_dragonRework.store matches 60.. run summon zombie ~-10 ~-10 ~ {Fire:0,HasVisualFire:false,Team:"rcube.dragon_rework",Tags:["dragon_rework.endZombie","dragon_rework.arrowDodge","dragon_rework.floor.spawn","dragon_rework.remove"],CustomName:'{"text":"End Zombie","color":"dark_purple","italic":false,"bold":true}',HandItems:[{id:"minecraft:diamond_sword",tag:{Enchantments:[{lvl:3,id:"minecraft:sharpness"},{lvl:3,id:"minecraft:knockback"}],Unbreakable:true,HideFlags:4},Count:1},{}],HandDropChances:[0f,0f],ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:9437439},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:thorns"},{lvl:255,id:"minecraft:feather_falling"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:9437439},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:blast_protection},{lvl:255,id:fire_protection},{lvl:255,id:projectile_protection},{lvl:5,id:thorns}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:9437439},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:thorns"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:player_head",tag:{Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:thorns"}],SkullOwner:{Id:[I;1997616500,1498695944,-1466020404,1481973358],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTJhZjYyMzE4OTBiNjQ4MWFkN2Y5NWQxNTBhYzRkNDM3NDA1ODFlZjhiYTA3OTQ0ODc4M2VmYmVlOGVlZjljMCJ9fX0="}]}}},Count:1}],ArmorDropChances:[0f,0f,0f,0f],ActiveEffects:[{Id:1,Duration:-1,Amplifier:2,ShowParticles:false},{Id:5,Duration:-1,Amplifier:0,ShowParticles:false},{Id:12,Duration:-1,Amplifier:-1,ShowParticles:true},{Id:28,Duration:1200,Amplifier:1,ShowParticles:false}]}

execute unless score Entity.EndZombie rcube_dragonRework.store matches 60.. run particle smoke ~ ~-10 ~10 0 0 0 1 100 force
execute unless score Entity.EndZombie rcube_dragonRework.store matches 60.. run summon zombie ~ ~-10 ~10 {Fire:0,HasVisualFire:false,Team:"rcube.dragon_rework",Tags:["dragon_rework.endZombie","dragon_rework.arrowDodge","dragon_rework.floor.spawn","dragon_rework.remove"],CustomName:'{"text":"End Zombie","color":"dark_purple","italic":false,"bold":true}',HandItems:[{id:"minecraft:diamond_sword",tag:{Enchantments:[{lvl:3,id:"minecraft:sharpness"},{lvl:3,id:"minecraft:knockback"}],Unbreakable:true,HideFlags:4},Count:1},{}],HandDropChances:[0f,0f],ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:9437439},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:thorns"},{lvl:255,id:"minecraft:feather_falling"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:9437439},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:blast_protection},{lvl:255,id:fire_protection},{lvl:255,id:projectile_protection},{lvl:5,id:thorns}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:9437439},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:thorns"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:player_head",tag:{Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:thorns"}],SkullOwner:{Id:[I;1997616500,1498695944,-1466020404,1481973358],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTJhZjYyMzE4OTBiNjQ4MWFkN2Y5NWQxNTBhYzRkNDM3NDA1ODFlZjhiYTA3OTQ0ODc4M2VmYmVlOGVlZjljMCJ9fX0="}]}}},Count:1}],ArmorDropChances:[0f,0f,0f,0f],ActiveEffects:[{Id:1,Duration:-1,Amplifier:2,ShowParticles:false},{Id:5,Duration:-1,Amplifier:0,ShowParticles:false},{Id:12,Duration:-1,Amplifier:-1,ShowParticles:true},{Id:28,Duration:1200,Amplifier:1,ShowParticles:false}]}
execute unless score Entity.EndZombie rcube_dragonRework.store matches 60.. run summon zombie ~ ~-10 ~10 {Fire:0,HasVisualFire:false,Team:"rcube.dragon_rework",Tags:["dragon_rework.endZombie","dragon_rework.arrowDodge","dragon_rework.floor.spawn","dragon_rework.remove"],CustomName:'{"text":"End Zombie","color":"dark_purple","italic":false,"bold":true}',HandItems:[{id:"minecraft:diamond_sword",tag:{Enchantments:[{lvl:3,id:"minecraft:sharpness"},{lvl:3,id:"minecraft:knockback"}],Unbreakable:true,HideFlags:4},Count:1},{}],HandDropChances:[0f,0f],ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:9437439},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:thorns"},{lvl:255,id:"minecraft:feather_falling"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:9437439},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:blast_protection},{lvl:255,id:fire_protection},{lvl:255,id:projectile_protection},{lvl:5,id:thorns}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:9437439},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:thorns"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:player_head",tag:{Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:thorns"}],SkullOwner:{Id:[I;1997616500,1498695944,-1466020404,1481973358],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTJhZjYyMzE4OTBiNjQ4MWFkN2Y5NWQxNTBhYzRkNDM3NDA1ODFlZjhiYTA3OTQ0ODc4M2VmYmVlOGVlZjljMCJ9fX0="}]}}},Count:1}],ArmorDropChances:[0f,0f,0f,0f],ActiveEffects:[{Id:1,Duration:-1,Amplifier:2,ShowParticles:false},{Id:5,Duration:-1,Amplifier:0,ShowParticles:false},{Id:12,Duration:-1,Amplifier:-1,ShowParticles:true},{Id:28,Duration:1200,Amplifier:1,ShowParticles:false}]}

execute unless score Entity.EndZombie rcube_dragonRework.store matches 60.. run particle smoke ~ ~-10 ~-10 0 0 0 1 100 force
execute unless score Entity.EndZombie rcube_dragonRework.store matches 60.. run summon zombie ~ ~-10 ~-10 {Fire:0,HasVisualFire:false,Team:"rcube.dragon_rework",Tags:["dragon_rework.endZombie","dragon_rework.arrowDodge","dragon_rework.floor.spawn","dragon_rework.remove"],CustomName:'{"text":"End Zombie","color":"dark_purple","italic":false,"bold":true}',HandItems:[{id:"minecraft:diamond_sword",tag:{Enchantments:[{lvl:3,id:"minecraft:sharpness"},{lvl:3,id:"minecraft:knockback"}],Unbreakable:true,HideFlags:4},Count:1},{}],HandDropChances:[0f,0f],ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:9437439},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:thorns"},{lvl:255,id:"minecraft:feather_falling"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:9437439},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:blast_protection},{lvl:255,id:fire_protection},{lvl:255,id:projectile_protection},{lvl:5,id:thorns}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:9437439},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:thorns"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:player_head",tag:{Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:thorns"}],SkullOwner:{Id:[I;1997616500,1498695944,-1466020404,1481973358],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTJhZjYyMzE4OTBiNjQ4MWFkN2Y5NWQxNTBhYzRkNDM3NDA1ODFlZjhiYTA3OTQ0ODc4M2VmYmVlOGVlZjljMCJ9fX0="}]}}},Count:1}],ArmorDropChances:[0f,0f,0f,0f],ActiveEffects:[{Id:1,Duration:-1,Amplifier:2,ShowParticles:false},{Id:5,Duration:-1,Amplifier:0,ShowParticles:false},{Id:12,Duration:-1,Amplifier:-1,ShowParticles:true},{Id:28,Duration:1200,Amplifier:1,ShowParticles:false}]}
execute unless score Entity.EndZombie rcube_dragonRework.store matches 60.. run summon zombie ~ ~-10 ~-10 {Fire:0,HasVisualFire:false,Team:"rcube.dragon_rework",Tags:["dragon_rework.endZombie","dragon_rework.arrowDodge","dragon_rework.floor.spawn","dragon_rework.remove"],CustomName:'{"text":"End Zombie","color":"dark_purple","italic":false,"bold":true}',HandItems:[{id:"minecraft:diamond_sword",tag:{Enchantments:[{lvl:3,id:"minecraft:sharpness"},{lvl:3,id:"minecraft:knockback"}],Unbreakable:true,HideFlags:4},Count:1},{}],HandDropChances:[0f,0f],ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:9437439},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:thorns"},{lvl:255,id:"minecraft:feather_falling"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:9437439},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:blast_protection},{lvl:255,id:fire_protection},{lvl:255,id:projectile_protection},{lvl:5,id:thorns}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:9437439},Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:thorns"}],Unbreakable:true,HideFlags:4},Count:1},{id:"minecraft:player_head",tag:{Enchantments:[{lvl:3,id:"minecraft:protection"},{lvl:255,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:fire_protection"},{lvl:255,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:thorns"}],SkullOwner:{Id:[I;1997616500,1498695944,-1466020404,1481973358],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTJhZjYyMzE4OTBiNjQ4MWFkN2Y5NWQxNTBhYzRkNDM3NDA1ODFlZjhiYTA3OTQ0ODc4M2VmYmVlOGVlZjljMCJ9fX0="}]}}},Count:1}],ArmorDropChances:[0f,0f,0f,0f],ActiveEffects:[{Id:1,Duration:-1,Amplifier:2,ShowParticles:false},{Id:5,Duration:-1,Amplifier:0,ShowParticles:false},{Id:12,Duration:-1,Amplifier:-1,ShowParticles:true},{Id:28,Duration:1200,Amplifier:1,ShowParticles:false}]}