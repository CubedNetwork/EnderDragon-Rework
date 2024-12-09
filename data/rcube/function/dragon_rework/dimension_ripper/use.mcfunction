# Made by: @rcube.
# Use dimensional ripper
# 
# Called By: rcube:dragon_rework/tick
# Ran as: Entity, Player

# Revoke "trigger" advancement
advancement revoke @s only rcube:use_dimension_ripper

# Set timer
execute unless score @s rcube_dragonRework.item matches ..100 run scoreboard players set @s rcube_dragonRework.item 100
scoreboard players remove @s rcube_dragonRework.item 1

# Break frame
execute if score @s rcube_dragonRework.item matches ..0 run scoreboard players set #break rcube_dragonRework.item 1
execute if score @s rcube_dragonRework.item matches ..0 if items entity @s weapon.mainhand poisonous_potato[custom_data~{"rcube":{"item":{"id":"rcube:dimension_ripper"}}}] if function rcube:dragon_rework/dimension_ripper/ray/start_ray run scoreboard players set #broken rcube_dragonRework.item 1
scoreboard players reset #break rcube_dragonRework.item

# Check if portal exists
execute if score @s rcube_dragonRework.item matches ..0 as @n[type=marker,tag=rcube_item.dimensional_ripper.break_loc.temp] run scoreboard players set #portal rcube_dragonRework.item 1
execute if score @s rcube_dragonRework.item matches ..0 if score #portal rcube_dragonRework.item matches 1 run scoreboard players set @s rcube_dragonRework.item.break_portal 10
execute if score @s rcube_dragonRework.item matches ..0 if score #portal rcube_dragonRework.item matches 1 run tag @s remove rcube_item.dimensional_ripper.break_loc.temp

# Damage item
execute if score #broken rcube_dragonRework.item matches 1 run data remove storage rcube:item root.dimension_ripper.temp
execute if score #broken rcube_dragonRework.item matches 1 run scoreboard players reset #damage_max
execute if score #broken rcube_dragonRework.item matches 1 run scoreboard players reset #damage_add
execute if score #broken rcube_dragonRework.item matches 1 run scoreboard players reset #damage
execute if score #broken rcube_dragonRework.item matches 1 run data modify storage rcube:item root.dimension_ripper.temp.components."minecraft:max_damage" set from entity @s SelectedItem.components."minecraft:max_damage"
execute if score #broken rcube_dragonRework.item matches 1 store result score #damage_max rcube_dragonRework.item run data get storage rcube:item root.dimension_ripper.temp.components."minecraft:max_damage" 1
execute if score #broken rcube_dragonRework.item matches 1 run scoreboard players operation #damage_add rcube_dragonRework.item = #damage_inflict rcube_dragonRework.item
execute if score #broken rcube_dragonRework.item matches 1 if score #portal rcube_dragonRework.item matches 1 run scoreboard players operation #damage_add rcube_dragonRework.item += #damage_inflict.portal rcube_dragonRework.item
execute if score #broken rcube_dragonRework.item matches 1 run scoreboard players operation #damage_add rcube_dragonRework.item /= #damage_max rcube_dragonRework.item
execute if score #broken rcube_dragonRework.item matches 1 run scoreboard players operation #damage rcube_dragonRework.item = #damage_add rcube_dragonRework.item
execute if score #broken rcube_dragonRework.item matches 1 run item modify entity @s weapon.mainhand rcube:dragon_rework/dimension_ripper/damage

# Break item
execute if score #broken rcube_dragonRework.item matches 1 if entity @s[gamemode=!creative,gamemode=!spectator] run scoreboard players set #gamemode rcube_dragonRework.item 1
execute if score #broken rcube_dragonRework.item matches 1 if score #gamemode rcube_dragonRework.item matches 1 run data modify storage rcube:item root.dimension_ripper.temp.components."minecraft:damage" set from entity @s SelectedItem.components."minecraft:damage"
execute if score #broken rcube_dragonRework.item matches 1 if score #gamemode rcube_dragonRework.item matches 1 store result score #damage rcube_dragonRework.item run data get storage rcube:item root.dimension_ripper.temp.components."minecraft:damage"
execute if score #broken rcube_dragonRework.item matches 1 if score #gamemode rcube_dragonRework.item matches 1 run scoreboard players operation #damage_max rcube_dragonRework.item -= #damage rcube_dragonRework.item
execute if score #broken rcube_dragonRework.item matches 1 if score #gamemode rcube_dragonRework.item matches 1 if score #damage_max rcube_dragonRework.item matches ..0 store result storage rcube:item root.dimension_ripper.temp.random float 0.01 run random value 80..120
execute if score #broken rcube_dragonRework.item matches 1 if score #gamemode rcube_dragonRework.item matches 1 if score #damage_max rcube_dragonRework.item matches ..0 run function rcube:dragon_rework/dimension_ripper/break/item with storage rcube:item root.dimension_ripper.temp
execute if score #broken rcube_dragonRework.item matches 1 if score #gamemode rcube_dragonRework.item matches 1 run scoreboard players reset #gamemode rcube_dragonRework.item

# Sounds
execute if score @s rcube_dragonRework.item matches 95 run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 1 1
execute if score @s rcube_dragonRework.item matches 80 run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 1 1
execute if score @s rcube_dragonRework.item matches 65 run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 1 1
execute if score @s rcube_dragonRework.item matches 50 run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 1 1
execute if score @s rcube_dragonRework.item matches 35 run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 1 1
execute if score @s rcube_dragonRework.item matches 20 run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 1 2
execute if score @s rcube_dragonRework.item matches 5 run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 1 2

# If eye found, give back to player
execute if score #broken rcube_dragonRework.item matches 1 if score #eye rcube_dragonRework.item matches 1 run give @s ender_eye 1
execute if score #broken rcube_dragonRework.item matches 1 if score #eye rcube_dragonRework.item matches 1 run scoreboard players reset #eye rcube_dragonRework.item

# Set cooldown
execute if score #broken rcube_dragonRework.item matches 1 run scoreboard players set @s rcube_dragonRework.item.cooldown 60
execute if score #broken rcube_dragonRework.item matches 1 run scoreboard players set @s rcube_dragonRework.item.cooldown.msg 5

# Cleanup
execute if score #broken rcube_dragonRework.item matches 1 run scoreboard players reset @s rcube_dragonRework.item
execute if score #broken rcube_dragonRework.item matches 1 if score #portal rcube_dragonRework.item matches 1 run scoreboard players reset #portal rcube_dragonRework.item
execute if score #broken rcube_dragonRework.item matches 1 run scoreboard players reset #broken rcube_dragonRework.item
