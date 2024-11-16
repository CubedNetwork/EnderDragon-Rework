# Made by: @rcube.
# Creeper Bomb
#
# Called By: rcube:dragon_rework/attacks/run
# Ran as: Entity, Ender Dragon (scores={rcube_dragonRework.phase=10})

# Summon
execute as @a[predicate=rcube:dragon_rework/end_centre] at @s rotated ~ 0 run summon creeper ^5 ^15 ^ {DeathLootTable:"minecraft:empty",Fire:0,HasVisualFire:false,powered:true,Fuse:20,ExplosionRadius:6,AbsorptionAmount:80f,CustomName:'[{"text":"Creeper Bomb","color":"dark_green","bold":true}]',Tags:["dragon_rework.creeper","dragon_rework.creeper_bomb","dragon_rework.floor.spawn","dragon_rework.noFire","dragon_rework.remove"],Team:"rcube.dragon_rework",Attributes:[{Name:"generic.movement_speed",Base:0.375}]}
execute as @a[predicate=rcube:dragon_rework/end_centre] at @s rotated ~ 0 run summon creeper ^ ^15 ^ {DeathLootTable:"minecraft:empty",Fire:0,HasVisualFire:false,powered:true,Fuse:20,ExplosionRadius:6,AbsorptionAmount:80f,CustomName:'[{"text":"Creeper Bomb","color":"dark_green","bold":true}]',Tags:["dragon_rework.creeper","dragon_rework.creeper_bomb","dragon_rework.floor.spawn","dragon_rework.noFire","dragon_rework.remove"],Team:"rcube.dragon_rework",Attributes:[{Name:"generic.movement_speed",Base:0.375}]}
execute as @a[predicate=rcube:dragon_rework/end_centre] at @s rotated ~ 0 run summon creeper ^-5 ^15 ^ {DeathLootTable:"minecraft:empty",Fire:0,HasVisualFire:false,powered:true,Fuse:20,ExplosionRadius:6,AbsorptionAmount:80f,CustomName:'[{"text":"Creeper Bomb","color":"dark_green","bold":true}]',Tags:["dragon_rework.creeper","dragon_rework.creeper_bomb","dragon_rework.floor.spawn","dragon_rework.noFire","dragon_rework.remove"],Team:"rcube.dragon_rework",Attributes:[{Name:"generic.movement_speed",Base:0.375}]}

# Ignite after 7s
schedule function rcube:dragon_rework/attacks/creeper_bomb/ignite 7s append
