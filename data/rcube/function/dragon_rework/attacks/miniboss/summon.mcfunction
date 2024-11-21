# Made by: @rcube.
# Spawn miniboss
#
# Called By: rcube:dragon_rework/dragon
# Ran as: Entity, Ender Dragon (MAD = true)

# Summon
execute at @e[tag=dragon_rework.monumentMarker,limit=1,type=minecraft:marker] unless entity @e[tag=dragon_rework.miniboss] run summon stray ~ ~ ~ {\
    DeathLootTable:"rcube:dragon_rework/empty",\
    Fire:0,HasVisualFire:false,\
    CustomName:'[{"text":"Warrior of the Years Past","color":"yellow","bold":true}]',CustomNameVisible:true,\
    Health:150,\
    attributes:[\
        {id:"max_health",base:150},\
        {id:"follow_range",base:100},\
        {id:"movement_speed",base:0.675}\
    ],Glowing:true,\
    PersistenceRequired:true,\
    Team:"rcube.dragon_rework",\
    Tags:[\
        "dragon_rework.miniboss",\
        "dragon_rework.remove",\
        "dragon_rework.arrowDodge",\
        "dragon_rework.noFire"\
    ],HandItems:[\
        {id:"minecraft:bow",count:1,components:{\
            "minecraft:custom_name":'["",{"text":"The Bow of Old","italic":false,"color":"dark_purple"}]',\
            "minecraft:enchantments":{levels:{\
                "minecraft:power":7,"minecraft:punch":3,flame:1,infinity:1}},\
            "minecraft:unbreakable":{show_in_tooltip:false}}},\
        {id:"minecraft:totem_of_undying",count:1}\
    ],HandDropChances:[0f,0f],\
    ArmorItems:[\
        {id:"minecraft:leather_boots",count:1,components:{\
            "minecraft:dyed_color":1908001,\
            "minecraft:enchantments":{levels:{\
                "minecraft:protection":6,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":5,"minecraft:feather_falling":255}},\
            "minecraft:unbreakable":{show_in_tooltip:false}}},\
        {id:"minecraft:leather_leggings",count:1,components:{\
            "minecraft:dyed_color":1908001,\
            "minecraft:enchantments":{levels:{\
                "minecraft:protection":6,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":5}},\
            "minecraft:unbreakable":{show_in_tooltip:false}}},\
        {id:"minecraft:leather_chestplate",count:1,components:{\
            "minecraft:dyed_color":1908001,\
            "minecraft:enchantments":{levels:{\
                "minecraft:protection":6,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":5}},\
            "minecraft:unbreakable":{show_in_tooltip:false}}},\
        {id:"minecraft:player_head",count:1,components:{\
            "minecraft:enchantments":{levels:{\
                "minecraft:protection":6,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":5}},\
            "minecraft:profile":{properties:[{\
                name:"textures",\
                value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2E1OWJiMGE3YTMyOTY1YjNkOTBkOGVhZmE4OTlkMTgzNWY0MjQ1MDllYWRkNGU2YjcwOWFkYTUwYjljZiJ9fX0="}],\
                id:[I;233407588,309611990,-1146603762,-94551640]},\
            "minecraft:unbreakable":{show_in_tooltip:false}}}\
    ],ArmorDropChances:[0f,0f,0f,0f],\
    Passengers:[\
        {id:"minecraft:marker",Tags:["dragon_rework.miniboss.loc"]}]}
