# Made by: @rcube.
# Give effects to miniboss
#
# Called By: rcube:dragon_rework/attacks/mad/miniboss/summon (If miniboss exists)
# Ran as: Entity, Ender Dragon (dragonInit = true)

# Effects, normal
execute if entity @s[nbt={HandItems:[{id:"minecraft:totem_of_undying",Count:1b}]}] run effect give @s speed 2 2 true
execute if entity @s[nbt={HandItems:[{id:"minecraft:totem_of_undying",Count:1b}]}] run effect give @s strength 2 1 true
execute if entity @s[nbt={HandItems:[{id:"minecraft:totem_of_undying",Count:1b}]}] run effect give @s resistance 2 0 true

# Handle MAD
execute if entity @s[nbt=!{HandItems:[{id:"minecraft:totem_of_undying",Count:1b}]}] run tag @s add dragon_rework.minibossMAD

# Heal
execute if entity @s[nbt=!{HandItems:[{id:"minecraft:totem_of_undying",Count:1b}]}] run effect give @s instant_damage 1 9 true

# Effects
execute if entity @s[tag=dragon_rework.minibossMAD] run effect give @s speed 2 2 true
execute if entity @s[tag=dragon_rework.minibossMAD] run effect give @s strength 2 2 true
execute if entity @s[tag=dragon_rework.minibossMAD] run effect give @s resistance 2 1 true