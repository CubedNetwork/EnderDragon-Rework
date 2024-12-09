# Made by: @rcube.
# Dimensional ripper - tell cooldown
# Called By: rcube:dragon_rework/tick
# Ran as: Entity, Player

# Cooldown/msg
scoreboard players set @s rcube_dragonRework.item.cooldown.msg 5

# Find cooldown in seconds (rounded). [phased out ÷20 as scoreboard always rounds down] [possibly swap to always round up?]
scoreboard players operation #cooldown_tmp rcube_dragonRework.item.cooldown = @s rcube_dragonRework.item.cooldown
execute if score #cooldown_tmp rcube_dragonRework.item.cooldown matches 50..60 run scoreboard players set #cooldown rcube_dragonRework.item.cooldown 3
execute if score #cooldown_tmp rcube_dragonRework.item.cooldown matches 30..49 run scoreboard players set #cooldown rcube_dragonRework.item.cooldown 2
execute if score #cooldown_tmp rcube_dragonRework.item.cooldown matches 10..29 run scoreboard players set #cooldown rcube_dragonRework.item.cooldown 1
execute if score #cooldown_tmp rcube_dragonRework.item.cooldown matches 0..9 run scoreboard players set #cooldown rcube_dragonRework.item.cooldown 0
execute unless score #cooldown_tmp rcube_dragonRework.item.cooldown matches 0.. run scoreboard players set #bugged rcube_dragonRework.item.cooldown 1
execute if score #bugged rcube_dragonRework.item.cooldown matches 1 run scoreboard players operation #cooldown rcube_dragonRework.item.cooldown = @s rcube_dragonRework.item.cooldown
execute if score #bugged rcube_dragonRework.item.cooldown matches 1 run scoreboard players operation #cooldown rcube_dragonRework.item.cooldown /= #math.20 rcube_dragonRework.const

# Send cooldown message
tellraw @s ["",{"text": "This ability is on cooldown for ","color": "red"},{"score": {"objective": "rcube_dragonRework.item.cooldown","name": "#cooldown"},"color": "red"},{"text": "s.","color": "red"}]

# Cleanup
scoreboard players reset #cooldown_tmp rcube_dragonRework.item.cooldown
scoreboard players reset #cooldown rcube_dragonRework.item.cooldown
execute if score #bugged rcube_dragonRework.item.cooldown matches 1 run scoreboard players reset #bugged rcube_dragonRework.item.cooldown
