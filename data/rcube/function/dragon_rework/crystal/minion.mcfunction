# Made by: @rcube.
# Summon miniboss upon destruction of crystal
#
# Called By: rcube:dragon_rework/dragon
# Ran as: Entity, Ender Dragon (dragonInit = true)

# Summon
summon blaze ^1.5 ^4 ^-1.5 {\
    DeathLootTable:"rcube:dragon_rework/empty",\
    Health:40,\
    attributes:[\
        {id:"max_health",base:40f},\
        {id:"follow_range",base:250f}],\
    PersistenceRequired:true,\
    Team:"rcube.dragon_rework",\
    Tags:["dragon_rework.crystal.minion","dragon_rework.crystal.minion.blaze","dragon_rework.remove"],\
    active_effects:[\
        {id:"minecraft:speed",duration:-1,amplifier:1,show_particles:0b},\
        {id:"minecraft:strength",duration:-1,amplifier:1,show_particles:0b},\
        {id:"minecraft:fire_resistance",duration:-1,amplifier:0,show_particles:0b}],\
    Passengers:[\
        {id:"minecraft:skeleton",\
            DeathLootTable:"rcube:dragon_rework/empty",\
            Health:40,\
            attributes:[\
                {id:"follow_range",base:150f},\
                {id:"max_health",base:40f}],\
            PersistenceRequired:true,\
            Team:"rcube.dragon_rework",\
            Tags:[\
                "dragon_rework.crystal.minion",\
                "dragon_rework.crystal.minion.skeleton",\
                "dragon_rework.arrowImmune",\
                "dragon_rework.remove"],\
            active_effects:[\
                {id:"minecraft:speed",duration:-1,amplifier:2,show_particles:0b},\
                {id:"minecraft:strength",duration:-1,amplifier:1,show_particles:0b},\
                {id:"minecraft:resistance",duration:-1,amplifier:0,show_particles:0b},\
                {id:"minecraft:fire_resistance",duration:-1,amplifier:0,show_particles:0b},\
                {id:"minecraft:slow_falling",duration:-1,amplifier:0,show_particles:0b}],\
            HandItems:[\
                {id:"minecraft:bow",count:1,components:{\
                    "minecraft:enchantments":{levels:{\
                        "minecraft:punch":1}},\
                    "minecraft:unbreakable":{show_in_tooltip:false}}},\
                {}\
            ],HandDropChances:[0f,0f],\
            ArmorItems:[\
                {id:"minecraft:iron_boots",count:1,components:{\
                    "minecraft:enchantments":{levels:{\
                        "minecraft:protection":5,"minecraft:blast_protection":5,"minecraft:fire_protection":5,"minecraft:projectile_protection":5,"minecraft:feather_falling":255}},\
                    "minecraft:unbreakable":{show_in_tooltip:false}}},\
                {id:"minecraft:iron_leggings",count:1,components:{\
                    "minecraft:enchantments":{levels:{\
                        "minecraft:protection":5,"minecraft:blast_protection":5,"minecraft:fire_protection":5,"minecraft:projectile_protection":5}},\
                    "minecraft:unbreakable":{show_in_tooltip:false}}},\
                {id:"minecraft:iron_chestplate",count:1,components:{\
                    "minecraft:enchantments":{levels:{\
                        "minecraft:protection":5,"minecraft:blast_protection":5,"minecraft:fire_protection":5,"minecraft:projectile_protection":5}},\
                    "minecraft:unbreakable":{show_in_tooltip:false}}},\
                {id:"minecraft:iron_helmet",count:1,components:{\
                    "minecraft:enchantments":{levels:{\
                        "minecraft:protection":5,"minecraft:blast_protection":5,"minecraft:fire_protection":5,"minecraft:projectile_protection":5}},\
                    "minecraft:unbreakable":{show_in_tooltip:false}}}\
            ],ArmorDropChances:[0f,0f,0f,0f]}]}
summon blaze ^ ^4 ^ {DeathLootTable:"rcube:dragon_rework/empty",Health:40,attributes:[{id:"max_health",base:40f},{id:"follow_range",base:250f}],PersistenceRequired:true,Team:"rcube.dragon_rework",Tags:["dragon_rework.crystal.minion","dragon_rework.crystal.minion.blaze","dragon_rework.remove"],active_effects:[{id:"minecraft:speed",duration:-1,amplifier:1,show_particles:0b},{id:"minecraft:strength",duration:-1,amplifier:1,show_particles:0b},{id:"minecraft:fire_resistance",duration:-1,amplifier:0,show_particles:0b}],Passengers:[{id:"minecraft:skeleton",DeathLootTable:"rcube:dragon_rework/empty",Health:40,attributes:[{id:"follow_range",base:150f},{id:"max_health",base:40f}],PersistenceRequired:true,Team:"rcube.dragon_rework",Tags:["dragon_rework.crystal.minion","dragon_rework.crystal.minion.skeleton","dragon_rework.arrowImmune","dragon_rework.remove"],active_effects:[{id:"minecraft:speed",duration:-1,amplifier:2,show_particles:0b},{id:"minecraft:strength",duration:-1,amplifier:1,show_particles:0b},{id:"minecraft:resistance",duration:-1,amplifier:0,show_particles:0b},{id:"minecraft:fire_resistance",duration:-1,amplifier:0,show_particles:0b},{id:"minecraft:slow_falling",duration:-1,amplifier:0,show_particles:0b}],HandItems:[{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:punch":1}},"minecraft:unbreakable":{show_in_tooltip:false}}},{}],HandDropChances:[0f,0f],ArmorItems:[{id:"minecraft:iron_boots",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":5,"minecraft:blast_protection":5,"minecraft:fire_protection":5,"minecraft:projectile_protection":5,"minecraft:feather_falling":255}},"minecraft:unbreakable":{show_in_tooltip:false}}},{id:"minecraft:iron_leggings",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":5,"minecraft:blast_protection":5,"minecraft:fire_protection":5,"minecraft:projectile_protection":5}},"minecraft:unbreakable":{show_in_tooltip:false}}},{id:"minecraft:iron_chestplate",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":5,"minecraft:blast_protection":5,"minecraft:fire_protection":5,"minecraft:projectile_protection":5}},"minecraft:unbreakable":{show_in_tooltip:false}}},{id:"minecraft:iron_helmet",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":5,"minecraft:blast_protection":5,"minecraft:fire_protection":5,"minecraft:projectile_protection":5}},"minecraft:unbreakable":{show_in_tooltip:false}}}],ArmorDropChances:[0f,0f,0f,0f]}]}
summon blaze ^-1.5 ^4 ^1.5 {DeathLootTable:"rcube:dragon_rework/empty",Health:40,attributes:[{id:"max_health",base:40f},{id:"follow_range",base:250f}],PersistenceRequired:true,Team:"rcube.dragon_rework",Tags:["dragon_rework.crystal.minion","dragon_rework.crystal.minion.blaze","dragon_rework.remove"],active_effects:[{id:"minecraft:speed",duration:-1,amplifier:1,show_particles:0b},{id:"minecraft:strength",duration:-1,amplifier:1,show_particles:0b},{id:"minecraft:fire_resistance",duration:-1,amplifier:0,show_particles:0b}],Passengers:[{id:"minecraft:skeleton",DeathLootTable:"rcube:dragon_rework/empty",Health:40,attributes:[{id:"follow_range",base:150f},{id:"max_health",base:40f}],PersistenceRequired:true,Team:"rcube.dragon_rework",Tags:["dragon_rework.crystal.minion","dragon_rework.crystal.minion.skeleton","dragon_rework.arrowImmune","dragon_rework.remove"],active_effects:[{id:"minecraft:speed",duration:-1,amplifier:2,show_particles:0b},{id:"minecraft:strength",duration:-1,amplifier:1,show_particles:0b},{id:"minecraft:resistance",duration:-1,amplifier:0,show_particles:0b},{id:"minecraft:fire_resistance",duration:-1,amplifier:0,show_particles:0b},{id:"minecraft:slow_falling",duration:-1,amplifier:0,show_particles:0b}],HandItems:[{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:punch":1}},"minecraft:unbreakable":{show_in_tooltip:false}}},{}],HandDropChances:[0f,0f],ArmorItems:[{id:"minecraft:iron_boots",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":5,"minecraft:blast_protection":5,"minecraft:fire_protection":5,"minecraft:projectile_protection":5,"minecraft:feather_falling":255}},"minecraft:unbreakable":{show_in_tooltip:false}}},{id:"minecraft:iron_leggings",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":5,"minecraft:blast_protection":5,"minecraft:fire_protection":5,"minecraft:projectile_protection":5}},"minecraft:unbreakable":{show_in_tooltip:false}}},{id:"minecraft:iron_chestplate",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":5,"minecraft:blast_protection":5,"minecraft:fire_protection":5,"minecraft:projectile_protection":5}},"minecraft:unbreakable":{show_in_tooltip:false}}},{id:"minecraft:iron_helmet",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":5,"minecraft:blast_protection":5,"minecraft:fire_protection":5,"minecraft:projectile_protection":5}},"minecraft:unbreakable":{show_in_tooltip:false}}}],ArmorDropChances:[0f,0f,0f,0f]}]}

# Tag
tag @s add dragon_rework.crystal.destroyed
