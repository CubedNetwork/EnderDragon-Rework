# Made by: @rcube.
# "Break" dimensional ripper
# 
# Called By: rcube:dragon_rework/dimension_ripper/use
# Ran as: Entity, Player

# Remove item
item replace entity @s weapon.mainhand with air

# Break sound
$playsound minecraft:entity.item.break player @a ~ ~ ~ 1 $(random)
