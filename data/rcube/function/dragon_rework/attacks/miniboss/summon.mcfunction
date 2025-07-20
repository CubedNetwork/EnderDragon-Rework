# Made by: @rcube.
# Spawn miniboss
#
# Called By: rcube:dragon_rework/dragon
# Ran as: Entity, Ender Dragon (MAD = true)

# Summon
execute at @e[tag=dragon_rework.monumentMarker,limit=1,type=minecraft:marker] unless entity @e[tag=dragon_rework.miniboss] run summon stray ~ ~ ~ {\
    DeathLootTable:"rcube:dragon_rework/empty",\
    Fire:0,HasVisualFire:false,\
    CustomName:[{"text":"Warrior of the Years Past","color":"yellow","bold":true}],CustomNameVisible:true,\
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
    ],equipment:{\
        mainhand:{id:"minecraft:bow",count:1,components:{\
            "minecraft:custom_name":["",{"text":"The Bow of Old","italic":false,"color":"dark_purple"}],\
            "minecraft:enchantments":{\
                "minecraft:power":7,"minecraft:punch":3,flame:1,infinity:1},\
            "minecraft:unbreakable":{},\
            "minecraft:tooltip_display":{hidden_components:["minecraft:enchantments"]}}},\
        offhand:{id:"minecraft:totem_of_undying",count:1},\
        head:{id:"minecraft:player_head",count:1,components:{\
            "minecraft:enchantments":{\
                "minecraft:protection":6,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":5},\
            "minecraft:profile":{properties:[{\
                name:"textures",\
                value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2E1OWJiMGE3YTMyOTY1YjNkOTBkOGVhZmE4OTlkMTgzNWY0MjQ1MDllYWRkNGU2YjcwOWFkYTUwYjljZiJ9fX0="}],\
                id:[I;233407588,309611990,-1146603762,-94551640]},\
            "minecraft:unbreakable":{},\
            "minecraft:tooltip_display":{hidden_components:["minecraft:enchantments"]}}},\
        chest:{id:"minecraft:leather_chestplate",count:1,components:{\
            "minecraft:dyed_color":1908001,\
            "minecraft:enchantments":{\
                "minecraft:protection":6,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":5},\
            "minecraft:unbreakable":{},\
            "minecraft:tooltip_display":{hidden_components:["minecraft:enchantments"]}}},\
        legs:{id:"minecraft:leather_leggings",count:1,components:{\
            "minecraft:dyed_color":1908001,\
            "minecraft:enchantments":{\
                "minecraft:protection":6,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":5},\
            "minecraft:unbreakable":{},\
            "minecraft:tooltip_display":{hidden_components:["minecraft:enchantments"]}}},\
        feet:{id:"minecraft:leather_boots",count:1,components:{\
            "minecraft:dyed_color":1908001,\
            "minecraft:enchantments":{\
                "minecraft:protection":6,"minecraft:blast_protection":255,"minecraft:fire_protection":255,"minecraft:projectile_protection":255,"minecraft:thorns":5,"minecraft:feather_falling":255},\
            "minecraft:unbreakable":{},\
            "minecraft:tooltip_display":{hidden_components:["minecraft:enchantments"]}}},\
    },drop_chances:{mainhand:0f,offhand:0f,head:0f,body:0f,chest:0f,feet:0f},\
    Passengers:[\
        {id:"minecraft:marker",Tags:["dragon_rework.miniboss.loc"]}]}
