# Made by: @rcube.
# Dimensional ripper - give item
# Called By: Player
# Ran as: Entity, Player

# Give item
give @s poisonous_potato[ \
    minecraft:item_name='"Dimensional Ripper"', \
    minecraft:item_model="minecraft:structure_void", \
    minecraft:max_stack_size=1, \
    minecraft:rarity="uncommon", \
    minecraft:enchantment_glint_override=true, \
    minecraft:lore=[ \
        '["",{"text":"Ability: Frame Disrupter","italic":false,"color":"gold"},{"text":" ","italic":false,"color":"gold"},{"text":"RIGHT CLICK","italic":false,"color":"yellow","bold":true}]', \
        '["",{"text":"Permanently removes the ","italic":false,"color":"gray"},{"text":"End Portal","italic":false,"color":"white"}]', \
        '["",{"text":"Frame","italic":false,"color":"white"},{"text":" block you hold right-click on","italic":false,"color":"gray"}]', \
        '["",{"text":"for ","italic":false,"color":"gray"},{"text":"5s","italic":false,"color":"green"},{"text":", disabling the ","italic":false,"color":"gray"},{"text":"End Portal","italic":false,"color":"white"},{"text":". If it","italic":false,"color":"gray"}]', \
        '["",{"text":"contains an ","italic":false,"color":"gray"},{"text":"Eye of Ender","italic":false,"color":"white"},{"text":", it will be","italic":false,"color":"gray"}]', \
        '{"text":"given back.","italic":false,"color":"gray"}', \
        '["",{"text":"Cooldown: ","italic":false,"color":"dark_gray"},{"text":"3s","italic":false,"color":"green"}]', \
    ], \
    minecraft:consumable={ \
        consume_seconds:2147483647, \
        animation:"none", \
        sound:"minecraft:intentionally_empty",\
        has_consume_particles:true \
    }, \
    minecraft:food={ \
        "nutrition":0, \
        "saturation":0, \
        "can_always_eat":true, \
    }, \
    minecraft:max_damage=3, \
    minecraft:damage=0, \
    minecraft:use_cooldown={ \
        seconds:2.95, \
        cooldown_group:"rcube:dimension_ripper" \
    }, \
    minecraft:custom_data={"rcube":{"item":{"id":"rcube:dimension_ripper","version":{"current":1,"legacy":{},"updates":[{}]}}}} \
]