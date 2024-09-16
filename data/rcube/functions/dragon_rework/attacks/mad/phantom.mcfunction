# Made by: @rcube.
# Summon 3 phantoms per player, compatible with Vanilla Tweaks' Larger Phantoms
#
# Called By: rcube:dragon_rework/attacks/do_mad
# Ran as: Entity, Dragon (scores={rcube_dragonRework.phase=5})

# 5 left, 5 forward, 20 up
execute as @a[predicate=rcube:dragon_rework/end_centre,gamemode=!spectator] unless score Entity.CustomPhantom rcube_dragonRework.store matches 50 at @s rotated ~ 0 run summon phantom ^5 ^20 ^5 {DeathLootTable:"minecraft:empty",Fire:0,HasVisualFire:false,Size:7,CustomName:'[{"text":"     "}]',CustomNameVisible:true,Health:35,PersistenceRequired:true,Silent:true,Team:"rcube.dragon_rework",Tags:["dragon_rework.phantom","dragon_rework.remove","dragon_rework.arrowDodge","larPha.done"],ActiveEffects:[{Id:14,Duration:-1,ShowParticles:false}],Attributes:[{Name:"generic.max_health",Base:150},{Name:"generic.follow_range",Base:100},{Name:"generic.movement_speed",Base:5}]}
# 0 left, 0 forward, 20 up
execute as @a[predicate=rcube:dragon_rework/end_centre,gamemode=!spectator] unless score Entity.CustomPhantom rcube_dragonRework.store matches 50 at @s rotated ~ 0 run summon phantom ^ ^20 ^ {DeathLootTable:"minecraft:empty",Fire:0,HasVisualFire:false,Size:7,CustomName:'[{"text":"     "}]',CustomNameVisible:true,Health:35,PersistenceRequired:true,Silent:true,Team:"rcube.dragon_rework",Tags:["dragon_rework.phantom","dragon_rework.remove","dragon_rework.arrowDodge","larPha.done"],ActiveEffects:[{Id:14,Duration:-1,ShowParticles:false}],Attributes:[{Name:"generic.max_health",Base:150},{Name:"generic.follow_range",Base:100},{Name:"generic.movement_speed",Base:5}]}
# 5 right, 5 back, 20 up
execute as @a[predicate=rcube:dragon_rework/end_centre,gamemode=!spectator] unless score Entity.CustomPhantom rcube_dragonRework.store matches 50 at @s rotated ~ 0 run summon phantom ^-5 ^20 ^-5 {DeathLootTable:"minecraft:empty",Fire:0,HasVisualFire:false,Size:7,CustomName:'[{"text":"     "}]',CustomNameVisible:true,Health:35,PersistenceRequired:true,Silent:true,Team:"rcube.dragon_rework",Tags:["dragon_rework.phantom","dragon_rework.remove","dragon_rework.arrowDodge","larPha.done"],ActiveEffects:[{Id:14,Duration:-1,ShowParticles:false}],Attributes:[{Name:"generic.max_health",Base:150},{Name:"generic.follow_range",Base:100},{Name:"generic.movement_speed",Base:5}]}
