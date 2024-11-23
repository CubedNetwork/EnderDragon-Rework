# Made by: @rcube.
# Summon miniboss' minions
#
# Called By: rcube:dragon_rework/attacks/miniboss/abilities/run
# Ran as: Entity(custom), Miniboss

# SM/Miniboss Minion 1
execute unless entity @e[tag=dragon_rework.miniboss.minion1] at @s anchored feet rotated ~ 0 run particle smoke ^10 ^-10 ^-10 0 0 0 1 100 force
execute unless entity @e[tag=dragon_rework.miniboss.minion1.1] at @s anchored feet rotated ~ 0 run summon zombie ^10 ^-10 ^-10 {\
    DeathLootTable:"rcube:dragon_rework/empty",\
    Fire:0,HasVisualFire:false,\
    Health:80,\
    attributes:[\
        {id:"max_health",base:80},\
        {id:"follow_range",base:150}\
    ],PersistenceRequired:true,\
    Silent:true,\
    Team:"rcube.dragon_rework",\
    Tags:[\
        "dragon_rework.miniboss.minion",\
        "dragon_rework.miniboss.minion1",\
        "dragon_rework.miniboss.minion1.1",\
        "dragon_rework.remove",\
        "dragon_rework.noFire",\
        "dragon_rework.arrowDodge"\
    ],active_effects:[\
        {id:"minecraft:speed",duration:-1,amplifier:1,show_particles:0b},\
        {id:"minecraft:strength",duration:-1,amplifier:0,show_particles:0b},\
        {id:"minecraft:fire_resistance",duration:-1,amplifier:0,show_particles:0b}\
    ],HandItems:[\
        {id:"minecraft:diamond_sword",count:1,components:{\
            "minecraft:custom_name":'["",{"text":"The Amputator","italic":false,"color":"blue"}]',\
            "minecraft:enchantments":{levels:{\
                "minecraft:sharpness":7,"minecraft:knockback":3}},\
            "minecraft:unbreakable":{show_in_tooltip:false}}},\
        {}\
    ],HandDropChances:[0f,0f],\
    ArmorItems:[\
        {id:"minecraft:leather_boots",count:1,components:{\
            "minecraft:dyed_color":3949738,\
            "minecraft:enchantments":{levels:{\
                "minecraft:protection":5,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":2,"minecraft:feather_falling":255}},\
            "minecraft:unbreakable":{show_in_tooltip:false}}},\
        {id:"minecraft:leather_chestplate",count:1,components:{\
            "minecraft:dyed_color":3949738,\
            "minecraft:enchantments":{levels:{\
                "minecraft:protection":5,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":2}},\
            "minecraft:unbreakable":{show_in_tooltip:false}}},\
        {id:"minecraft:leather_leggings",count:1,components:{\
            "minecraft:dyed_color":3949738,\
            "minecraft:enchantments":{levels:{\
                "minecraft:protection":5,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":2}},\
            "minecraft:unbreakable":{show_in_tooltip:false}}},\
        {id:"minecraft:player_head",count:1,components:{\
            "minecraft:dyed_color":3949738,\
            "minecraft:enchantments":{levels:{\
                "minecraft:protection":5,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":2}},\
            "minecraft:profile":{properties:[{\
                name:"textures",\
                value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmI5ZTZhZjZiODE5ZjNkOTBlNjdjZTJlNzA1OWZiZWYzMWRhMmFhOTUzZDM1ZTM0NTRmMTAyMWZhOTEyZWZkZSJ9fX0="}],\
                id:[I;1316730932,1403535779,-1483116252,-490192580]},\
            "minecraft:unbreakable":{show_in_tooltip:false}}}\
    ],ArmorDropChances:[0f,0f,0f,0f]}
execute unless entity @e[tag=dragon_rework.miniboss.minion1.2] at @s anchored feet rotated ~ 0 run summon zombie ^10 ^-10 ^-10 {DeathLootTable:"rcube:dragon_rework/empty",Fire:0,HasVisualFire:false,Health:80,attributes:[{id:"max_health",base:80},{id:"follow_range",base:150}],PersistenceRequired:true,Silent:true,Team:"rcube.dragon_rework",Tags:["dragon_rework.miniboss.minion","dragon_rework.miniboss.minion1","dragon_rework.miniboss.minion1.2","dragon_rework.remove","dragon_rework.noFire","dragon_rework.arrowDodge"],active_effects:[{id:"minecraft:speed",duration:-1,amplifier:1,show_particles:0b},{id:"minecraft:strength",duration:-1,amplifier:0,show_particles:0b},{id:"minecraft:fire_resistance",duration:-1,amplifier:0,show_particles:0b}],HandItems:[{id:"minecraft:diamond_sword",count:1,components:{"minecraft:custom_name":'["",{"text":"The Amputator","italic":false,"color":"blue"}]'"minecraft:enchantments":{levels:{"minecraft:sharpness":7,"minecraft:knockback":3}},"minecraft:unbreakable":{show_in_tooltip:false}}},{}],HandDropChances:[0f,0f],ArmorItems:[{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":3949738,"minecraft:enchantments":{levels:{"minecraft:protection":5,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":2,"minecraft:feather_falling":255}},"minecraft:unbreakable":{show_in_tooltip:false}}},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":3949738,"minecraft:enchantments":{levels:{"minecraft:protection":5,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":2}},"minecraft:unbreakable":{show_in_tooltip:false}}},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":3949738,"minecraft:enchantments":{levels:{"minecraft:protection":5,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":2}},"minecraft:unbreakable":{show_in_tooltip:false}}},{id:"minecraft:player_head",count:1,components:{"minecraft:dyed_color":3949738,"minecraft:enchantments":{levels:{"minecraft:protection":5,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":2}},"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmI5ZTZhZjZiODE5ZjNkOTBlNjdjZTJlNzA1OWZiZWYzMWRhMmFhOTUzZDM1ZTM0NTRmMTAyMWZhOTEyZWZkZSJ9fX0="}],id:[I;1316730932,1403535779,-1483116252,-490192580]},"minecraft:unbreakable":{show_in_tooltip:false}}}],ArmorDropChances:[0f,0f,0f,0f]}

# BM/Miniboss Minion 2
execute unless entity @e[tag=dragon_rework.miniboss.minion2] at @s anchored feet rotated ~ 0 run particle smoke ^0 ^-10 ^-10 0 0 0 1 100 force
execute unless entity @e[tag=dragon_rework.miniboss.minion2.1] at @s anchored feet rotated ~ 0 run summon skeleton ^0 ^-10 ^-10 {\
    DeathLootTable:"rcube:dragon_rework/empty",\
    Fire:0,HasVisualFire:false,\
    Health:60,\
    attributes:[\
        {id:"max_health",base:60},\
        {id:"follow_range",base:150}\
    ],PersistenceRequired:true,\
    Silent:true,\
    Team:"rcube.dragon_rework",\
    Tags:[\
        "dragon_rework.miniboss.minion",\
        "dragon_rework.miniboss.minion2",\
        "dragon_rework.miniboss.minion2.1",\
        "dragon_rework.remove",\
        "dragon_rework.noFire",\
        "dragon_rework.arrowDodge"\
    ],active_effects:[\
        {id:"minecraft:speed",duration:-1,amplifier:2,show_particles:0b},\
        {id:"minecraft:strength",duration:-1,amplifier:0,show_particles:0b},\
        {id:"minecraft:fire_resistance",duration:-1,amplifier:0,show_particles:0b}\
    ],HandItems:[\
        {id:"minecraft:bow",count:1,components:{\
            "minecraft:custom_name":'["",{"text":"The Elden Bow","italic":false,"color":"dark_purple"}]',\
            "minecraft:enchantments":{levels:{\
                "minecraft:power":4,"minecraft:punch":2,"minecraft:flame":1}},\
            "minecraft:unbreakable":{show_in_tooltip:false}}},\
        {}\
    ],HandDropChances:[0f,0f],\
    ArmorItems:[\
        {id:"minecraft:leather_boots",count:1,components:{\
            "minecraft:dyed_color":1481884,\
            "minecraft:enchantments":{levels:{\
                "minecraft:protection":4,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":2,"minecraft:feather_falling":255}},\
            "minecraft:unbreakable":{show_in_tooltip:false}}},\
        {id:"minecraft:leather_chestplate",count:1,components:{\
            "minecraft:dyed_color":1481884,\
            "minecraft:enchantments":{levels:{\
                "minecraft:protection":4,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":2}},\
            "minecraft:unbreakable":{show_in_tooltip:false}}},\
        {id:"minecraft:leather_leggings",count:1,components:{\
            "minecraft:dyed_color":1481884,\
            "minecraft:enchantments":{levels:{\
                "minecraft:protection":4,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":2}},\
            "minecraft:unbreakable":{show_in_tooltip:false}}},\
        {id:"minecraft:player_head",count:1,components:{\
            "minecraft:dyed_color":1481884,\
            "minecraft:enchantments":{levels:{\
                "minecraft:protection":4,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":2}},\
            "minecraft:profile":{properties:[{\
                name:"textures",\
                value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGFhOGZjOGRlNjQxN2I0OGQ0OGM4MGI0NDNjZjUzMjZlM2Q5ZGE0ZGJlOWIyNWZjZDQ5NTQ5ZDk2MTY4ZmMwIn19fQ=="}],\
                id:[I;907160796,1821854615,-1727336627,-176309982]},\
            "minecraft:unbreakable":{show_in_tooltip:false}}}\
    ],ArmorDropChances:[0f,0f,0f,0f]}
execute unless entity @e[tag=dragon_rework.miniboss.minion2.2] at @s anchored feet rotated ~ 0 run summon skeleton ^0 ^-10 ^-10 {DeathLootTable:"rcube:dragon_rework/empty",Fire:0,HasVisualFire:false,Health:60,attributes:[{id"max_health",base:60},{id:"follow_range",base:150}],PersistenceRequired:true,Silent:true,Team:"rcube.dragon_rework",Tags:["dragon_rework.miniboss.minion","dragon_rework.miniboss.minion2","dagonrework.miniboss.minion2.2","dragon_rework.remove","dragon_rework.noFire","dragon_rework.arrowDodge"],active_effects:[{id:"minecraft:speed",duration:-1,amplifier:2,show_particles:0b},{id:"minecraft:strength",duration:-1,amplifier:0,show_particles:0b},{id:"minecraft:fire_resistance",duration:-1,amplifier:0,show_particles:0b}],HandItems:[{id:"minecraft:bow",count:1,components:{"minecraft:custom_name":'["",{"text":"The Elden Bow","italic":false,"color":"dark_purple"}]',"minecraft:enchantments":{levels:{"minecraft:power":4,"minecraft:punch":2,"minecraft:flame":1}},"minecraft:unbreakable":{show_in_tooltip:false}}},{}],HandDropChances:[0f,0f],ArmorItems:[{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":1481884,"minecraft:enchantments":{levels:{"minecraft:protection":4,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":2,"minecraft:feather_falling":255}},"minecraft:unbreakable":{show_in_tooltip:false}}},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":1481884,"minecraft:enchantments":{levels:{"minecraft:protection":4,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":2}},"minecraft:unbreakable":{show_in_tooltip:false}}},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":1481884,"minecraft:enchantments":{levels:{"minecraft:protection":4,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":2}},"minecraft:unbreakable":{show_in_tooltip:false}}},{id:"minecraft:player_head",count:1,components:{"minecraft:dyed_color":1481884,"minecraft:enchantments":{levels:{"minecraft:protection":4,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":2}},"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGFhOGZjOGRlNjQxN2I0OGQ0OGM4MGI0NDNjZjUzMjZlM2Q5ZGE0ZGJlOWIyNWZjZDQ5NTQ5ZDk2MTY4ZmMwIn19fQ=="}],id:[I;907160796,1821854615,-1727336627,-176309982]},"minecraft:unbreakable":{show_in_tooltip:false}}}],ArmorDropChances:[0f,0f,0f,0f]}
execute unless entity @e[tag=dragon_rework.miniboss.minion2.3] at @s anchored feet rotated ~ 0 run summon skeleton ^0 ^-10 ^-10 {DeathLootTable:"rcube:dragon_rework/empty",Fire:0,HasVisualFire:false,Health:60,attributes:[{id"max_health",base:60},{id:"follow_range",base:150}],PersistenceRequired:true,Silent:true,Team:"rcube.dragon_rework",Tags:["dragon_rework.miniboss.minion","dragon_rework.miniboss.minion2","dagonrework.miniboss.minion2.3","dragon_rework.remove","dragon_rework.noFire","dragon_rework.arrowDodge"],active_effects:[{id:"minecraft:speed",duration:-1,amplifier:2,show_particles:0b},{id:"minecraft:strength",duration:-1,amplifier:0,show_particles:0b},{id:"minecraft:fire_resistance",duration:-1,amplifier:0,show_particles:0b}],HandItems:[{id:"minecraft:bow",count:1,components:{"minecraft:custom_name":'["",{"text":"The Elden Bow","italic":false,"color":"dark_purple"}]',"minecraft:enchantments":{levels:{"minecraft:power":4,"minecraft:punch":2,"minecraft:flame":1}},"minecraft:unbreakable":{show_in_tooltip:false}}},{}],HandDropChances:[0f,0f],ArmorItems:[{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":1481884,"minecraft:enchantments":{levels:{"minecraft:protection":4,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":2,"minecraft:feather_falling":255}},"minecraft:unbreakable":{show_in_tooltip:false}}},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":1481884,"minecraft:enchantments":{levels:{"minecraft:protection":4,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":2}},"minecraft:unbreakable":{show_in_tooltip:false}}},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":1481884,"minecraft:enchantments":{levels:{"minecraft:protection":4,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":2}},"minecraft:unbreakable":{show_in_tooltip:false}}},{id:"minecraft:player_head",count:1,components:{"minecraft:dyed_color":1481884,"minecraft:enchantments":{levels:{"minecraft:protection":4,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":2}},"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGFhOGZjOGRlNjQxN2I0OGQ0OGM4MGI0NDNjZjUzMjZlM2Q5ZGE0ZGJlOWIyNWZjZDQ5NTQ5ZDk2MTY4ZmMwIn19fQ=="}],id:[I;907160796,1821854615,-1727336627,-176309982]},"minecraft:unbreakable":{show_in_tooltip:false}}}],ArmorDropChances:[0f,0f,0f,0f]}

# PM/Miniboss Minion 3 - do
execute unless entity @e[tag=dragon_rework.miniboss.minion3] at @s anchored feet rotated ~ 0 run particle smoke ^-10 ^-10 ^-10 0 0 0 1 100 force
execute unless entity @e[tag=dragon_rework.miniboss.minion3.1] at @s anchored feet rotated ~ 0 run summon witch ^-10 ^-10 ^-10 {\
    DeathLootTable:"rcube:dragon_rework/empty",\
    Fire:0,HasVisualFire:true,\
    Health:40,\
    attributes:[\
        {id:"max_health",base:40},\
        {id:"follow_range",base:150}\
    ],PersistenceRequired:true,\
    Silent:true,\
    Team:"rcube.dragon_rework",\
    Tags:[\
        "dragon_rework.miniboss.minion",\
        "dragon_rework.miniboss.minion3",\
        "dragon_rework.miniboss.minion3.1",\
        "dragon_rework.remove",\
        "dragon_rework.arrowDodge"\
    ],active_effects:[\
        {id:"minecraft:speed",duration:-1,amplifier:1,show_particles:0b},\
        {id:"minecraft:resistance",duration:-1,amplifier:0,show_particles:0b},\
        {id:"minecraft:fire_resistance",duration:-1,amplifier:0,show_particles:0b},\
    ],ArmorItems:[\
        {id:"minecraft:leather_boots",count:1,components:{\
            "minecraft:enchantments":{levels:{\
                "minecraft:protection":3,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:feather_falling":255,"minecraft:thorns":2}},\
            "minecraft:unbreakable":{show_in_tooltip:false}}},\
        {id:"minecraft:leather_leggings",count:1,components:{\
            "minecraft:enchantments":{levels:{\
                "minecraft:protection":3,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":2}},\
            "minecraft:unbreakable":{show_in_tooltip:false}}},\
        {id:"minecraft:leather_chestplate",count:1,components:{\
            "minecraft:enchantments":{levels:{\
                "minecraft:protection":3,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":2}},\
            "minecraft:unbreakable":{show_in_tooltip:false}}},\
        {id:"minecraft:leather_helmet",count:1,components:{\
            "minecraft:enchantments":{levels:{\
                "minecraft:protection":3,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":2}},\
            "minecraft:unbreakable":{show_in_tooltip:false}}}\
    ],ArmorDropChances:[0f,0f,0f,0f]}
execute unless entity @e[tag=dragon_rework.miniboss.minion3.2] at @s anchored feet rotated ~ 0 run summon witch ^-10 ^-10 ^-10 {DeathLootTable:"rcube:dragon_rework/empty",Fire:0,HasVisualFire:true,Health:40,attributes:[{id:"max_health",base:40},{id:"follow_range",base:150}],PersistenceRequired:true,Silent:true,Team:"rcube.dragon_rework",Tags:["dragon_rework.miniboss.minion","dragon_rework.miniboss.minion3","dragon_rework.miniboss.minion3.2","dragon_rework.remove","dragon_rework.arrowDodge"],active_effects:[{id:"minecraft:speed",duration:-1,amplifier:1,show_particles:0b},{id:"minecraft:resistance",duration:-1,amplifier:0,show_particles:0b},{id:"minecraft:fire_resistance",duration:-1,amplifier:0,show_particles:0b},],ArmorItems:[{id:"minecraft:leather_boots",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":3,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:feather_falling":255,"minecraft:thorns":2}},"minecraft:unbreakable":{show_in_tooltip:false}}},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":3,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":2}},"minecraft:unbreakable":{show_in_tooltip:false}}},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":3,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":2}},"minecraft:unbreakable":{show_in_tooltip:false}}},{id:"minecraft:leather_helmet",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":3,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":2}},"minecraft:unbreakable":{show_in_tooltip:false}}}],ArmorDropChances:[0f,0f,0f,0f]}
execute unless entity @e[tag=dragon_rework.miniboss.minion3.3] at @s anchored feet rotated ~ 0 run summon witch ^-10 ^-10 ^-10 {DeathLootTable:"rcube:dragon_rework/empty",Fire:0,HasVisualFire:true,Health:40,attributes:[{id:"max_health",base:40},{id:"follow_range",base:150}],PersistenceRequired:true,Silent:true,Team:"rcube.dragon_rework",Tags:["dragon_rework.miniboss.minion","dragon_rework.miniboss.minion3","dragon_rework.miniboss.minion3.3","dragon_rework.remove","dragon_rework.arrowDodge"],active_effects:[{id:"minecraft:speed",duration:-1,amplifier:1,show_particles:0b},{id:"minecraft:resistance",duration:-1,amplifier:0,show_particles:0b},{id:"minecraft:fire_resistance",duration:-1,amplifier:0,show_particles:0b},],ArmorItems:[{id:"minecraft:leather_boots",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":3,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:feather_falling":255,"minecraft:thorns":2}},"minecraft:unbreakable":{show_in_tooltip:false}}},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":3,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":2}},"minecraft:unbreakable":{show_in_tooltip:false}}},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":3,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":2}},"minecraft:unbreakable":{show_in_tooltip:false}}},{id:"minecraft:leather_helmet",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":3,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":2}},"minecraft:unbreakable":{show_in_tooltip:false}}}],ArmorDropChances:[0f,0f,0f,0f]}
