# Made by: @rcube.
# Summon miniboss upon destruction of crystal
#
# Called By: rcube:dragon_rework/dragon
# Ran as: Entity, Ender Dragon (dragonInit = true)

# Summon
summon blaze ^1.5 ^4 ^-1.5 {DeathLootTable:"minecraft:empty",Health:40,PersistenceRequired:true,Team:"rcube.dragon_rework",Tags:["dragon_rework.crystal.miniboss","dragon_rework.crystal.miniboss.blaze","dragon_rework.remove"],ActiveEffects:[{Id:1,Duration:-1,Amplifier:1,ShowParticles:false},{Id:5,Duration:-1,Amplifier:1,ShowParticles:false},{Id:24,Duration:-1,Amplifier:0,ShowParticles:false},{Id:12,Duration:-1,Amplifier:0,ShowParticles:false}],Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.follow_range",Base:250f}],Passengers:[{id:"minecraft:skeleton",DeathLootTable:"minecraft:empty",Health:40,CanPickUpLoot:true,PersistenceRequired:true,Team:"rcube.dragon_rework",Tags:["dragon_rework.crystal.miniboss","dragon_rework.crystal.miniboss.skeleton","dragon_rework.arrowImmune","dragon_rework.remove"],ActiveEffects:[{Id:1,Duration:-1,Amplifier:2,ShowParticles:false},{Id:5,Duration:-1,Amplifier:1,ShowParticles:false},{Id:11,Duration:-1,Amplifier:0,ShowParticles:false},{Id:12,Duration:-1,Amplifier:0,ShowParticles:false},{Id:28,Duration:-1,Amplifier:0,ShowParticles:false}],HandItems:[{id:bow,tag:{Enchantments:[{lvl:1,id:"minecraft:punch"}],Unbreakable:true,HideFlags:4},Count:1},{}],HandDropChances:[0f,0f],ArmorItems:[{id:iron_boots,tag:{Enchantments:[{lvl:5,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:feather_falling"},{lvl:5,id:"minecraft:fire_protection"},{lvl:5,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:protection"},{lvl:0,id:"minecraft:punch"}],Unbreakable:true,HideFlags:5},Count:1},{id:iron_leggings,tag:{Enchantments:[{lvl:5,id:"minecraft:blast_protection"},{lvl:5,id:"minecraft:fire_protection"},{lvl:5,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:protection"},{lvl:0,id:"minecraft:punch"}],Unbreakable:true,HideFlags:5},Count:1},{id:iron_chestplate,tag:{Enchantments:[{lvl:5,id:"minecraft:blast_protection"},{lvl:5,id:"minecraft:fire_protection"},{lvl:5,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:protection"},{lvl:0,id:"minecraft:punch"}],Unbreakable:true,HideFlags:5},Count:1},{id:iron_helmet,tag:{Enchantments:[{lvl:5,id:"minecraft:blast_protection"},{lvl:5,id:"minecraft:fire_protection"},{lvl:5,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:protection"},{lvl:0,id:"minecraft:punch"}],Unbreakable:true,HideFlags:5},Count:1}],ArmorDropChances:[0f,0f,0f,0f],Attributes:[{Name:"generic.follow_range",Base:150f},{Name:"generic.max_health",Base:40f}]}]}
summon blaze ^ ^4 ^ {DeathLootTable:"minecraft:empty",Health:40,PersistenceRequired:true,Team:"rcube.dragon_rework",Tags:["dragon_rework.crystal.miniboss","dragon_rework.crystal.miniboss.blaze","dragon_rework.remove"],ActiveEffects:[{Id:1,Duration:-1,Amplifier:1,ShowParticles:false},{Id:5,Duration:-1,Amplifier:1,ShowParticles:false},{Id:24,Duration:-1,Amplifier:0,ShowParticles:false},{Id:12,Duration:-1,Amplifier:0,ShowParticles:false}],Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.follow_range",Base:250f}],Passengers:[{id:"minecraft:skeleton",DeathLootTable:"minecraft:empty",Health:40,CanPickUpLoot:true,PersistenceRequired:true,Team:"rcube.dragon_rework",Tags:["dragon_rework.crystal.miniboss","dragon_rework.crystal.miniboss.skeleton","dragon_rework.arrowImmune","dragon_rework.remove"],ActiveEffects:[{Id:1,Duration:-1,Amplifier:2,ShowParticles:false},{Id:5,Duration:-1,Amplifier:1,ShowParticles:false},{Id:11,Duration:-1,Amplifier:0,ShowParticles:false},{Id:12,Duration:-1,Amplifier:0,ShowParticles:false},{Id:28,Duration:-1,Amplifier:0,ShowParticles:false}],HandItems:[{id:bow,tag:{Enchantments:[{lvl:1,id:"minecraft:punch"}],Unbreakable:true,HideFlags:4},Count:1},{}],HandDropChances:[0f,0f],ArmorItems:[{id:iron_boots,tag:{Enchantments:[{lvl:5,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:feather_falling"},{lvl:5,id:"minecraft:fire_protection"},{lvl:5,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:protection"},{lvl:0,id:"minecraft:punch"}],Unbreakable:true,HideFlags:5},Count:1},{id:iron_leggings,tag:{Enchantments:[{lvl:5,id:"minecraft:blast_protection"},{lvl:5,id:"minecraft:fire_protection"},{lvl:5,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:protection"},{lvl:0,id:"minecraft:punch"}],Unbreakable:true,HideFlags:5},Count:1},{id:iron_chestplate,tag:{Enchantments:[{lvl:5,id:"minecraft:blast_protection"},{lvl:5,id:"minecraft:fire_protection"},{lvl:5,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:protection"},{lvl:0,id:"minecraft:punch"}],Unbreakable:true,HideFlags:5},Count:1},{id:iron_helmet,tag:{Enchantments:[{lvl:5,id:"minecraft:blast_protection"},{lvl:5,id:"minecraft:fire_protection"},{lvl:5,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:protection"},{lvl:0,id:"minecraft:punch"}],Unbreakable:true,HideFlags:5},Count:1}],ArmorDropChances:[0f,0f,0f,0f],Attributes:[{Name:"generic.follow_range",Base:150f},{Name:"generic.max_health",Base:40f}]}]}
summon blaze ^-1.5 ^4 ^1.5 {DeathLootTable:"minecraft:empty",Health:40,PersistenceRequired:true,Team:"rcube.dragon_rework",Tags:["dragon_rework.crystal.miniboss","dragon_rework.crystal.miniboss.blaze","dragon_rework.remove"],ActiveEffects:[{Id:1,Duration:-1,Amplifier:1,ShowParticles:false},{Id:5,Duration:-1,Amplifier:1,ShowParticles:false},{Id:24,Duration:-1,Amplifier:0,ShowParticles:false},{Id:12,Duration:-1,Amplifier:0,ShowParticles:false}],Attributes:[{Name:"generic.max_health",Base:40f},{Name:"generic.follow_range",Base:250f}],Passengers:[{id:"minecraft:skeleton",DeathLootTable:"minecraft:empty",Health:40,CanPickUpLoot:true,PersistenceRequired:true,Team:"rcube.dragon_rework",Tags:["dragon_rework.crystal.miniboss","dragon_rework.crystal.miniboss.skeleton","dragon_rework.arrowImmune","dragon_rework.remove"],ActiveEffects:[{Id:1,Duration:-1,Amplifier:2,ShowParticles:false},{Id:5,Duration:-1,Amplifier:1,ShowParticles:false},{Id:11,Duration:-1,Amplifier:0,ShowParticles:false},{Id:12,Duration:-1,Amplifier:0,ShowParticles:false},{Id:28,Duration:-1,Amplifier:0,ShowParticles:false}],HandItems:[{id:bow,tag:{Enchantments:[{lvl:1,id:"minecraft:punch"}],Unbreakable:true,HideFlags:4},Count:1},{}],HandDropChances:[0f,0f],ArmorItems:[{id:iron_boots,tag:{Enchantments:[{lvl:5,id:"minecraft:blast_protection"},{lvl:255,id:"minecraft:feather_falling"},{lvl:5,id:"minecraft:fire_protection"},{lvl:5,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:protection"},{lvl:0,id:"minecraft:punch"}],Unbreakable:true,HideFlags:5},Count:1},{id:iron_leggings,tag:{Enchantments:[{lvl:5,id:"minecraft:blast_protection"},{lvl:5,id:"minecraft:fire_protection"},{lvl:5,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:protection"},{lvl:0,id:"minecraft:punch"}],Unbreakable:true,HideFlags:5},Count:1},{id:iron_chestplate,tag:{Enchantments:[{lvl:5,id:"minecraft:blast_protection"},{lvl:5,id:"minecraft:fire_protection"},{lvl:5,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:protection"},{lvl:0,id:"minecraft:punch"}],Unbreakable:true,HideFlags:5},Count:1},{id:iron_helmet,tag:{Enchantments:[{lvl:5,id:"minecraft:blast_protection"},{lvl:5,id:"minecraft:fire_protection"},{lvl:5,id:"minecraft:projectile_protection"},{lvl:5,id:"minecraft:protection"},{lvl:0,id:"minecraft:punch"}],Unbreakable:true,HideFlags:5},Count:1}],ArmorDropChances:[0f,0f,0f,0f],Attributes:[{Name:"generic.follow_range",Base:150f},{Name:"generic.max_health",Base:40f}]}]}

# Tag
tag @s add dragon_rework.crystal.destroyed
