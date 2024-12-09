# Made by: @rcube.
# Break portal
# 
# Called By: rcube:dragon_rework/tick

# Break
execute if block ^ ^ ^1 end_portal run scoreboard players set #portal rcube_dragonRework.item 1
execute if score #portal rcube_dragonRework.item matches 1 run fill ^2 ^ ^3 ^-2 ^ ^1 air replace end_portal

# Playsound
execute if score #portal rcube_dragonRework.item matches 1 run playsound minecraft:block.ender_chest.close block @a ~ ~ ~ 1 0.5

# Cleanup
scoreboard players reset @s rcube_dragonRework.item.break_portal
scoreboard players reset #portal rcube_dragonRework.item
kill @s
