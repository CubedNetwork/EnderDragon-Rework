# Made by @rcube.
# Tell players their damage dealt
#
# Called By: rcube:dragon_rework/death/run

# Choose player
execute as @a[scores={rcube_dragonRework.death.players_do=1},limit=1] run tag @s add dragon_rework.player.your_dmg.temp
scoreboard players reset @a[tag=dragon_rework.player.your_dmg.temp] rcube_dragonRework.death.players_do

# #####################
# Text
# Your Damage: DMG (Position #X)
# #####################

# Find px count of damage dealt number
scoreboard players reset * rcube_dragonRework.death.temp
execute as @a[tag=dragon_rework.player.your_dmg.temp] store result storage rcube:api/px_calc in.str int 1 run scoreboard players get @s rcube_dragonRework.death.damage.total
data modify storage rcube:api/px_calc in.str set string storage rcube:api/px_calc in.str
function rcube:api/px_calc/run
execute store result score $px rcube_dragonRework.death.temp run data get storage rcube:api/px_calc out.px

# Find px count of rank number
execute as @a[tag=dragon_rework.player.your_dmg.temp] store result storage rcube:api/px_calc in.str int 1 run scoreboard players get @s rcube_dragonRework.death.damage.rank
data modify storage rcube:api/px_calc in.str set string storage rcube:api/px_calc in.str
function rcube:api/px_calc/run
execute store result score $rank rcube_dragonRework.death.temp run data get storage rcube:api/px_calc out.px

# Do math to centre text
scoreboard players operation $px rcube_dragonRework.death.temp += $rank rcube_dragonRework.death.temp
scoreboard players operation $px rcube_dragonRework.death.temp += #num.132 rcube_dragonRework.store
execute store result storage rcube:api/centre_string in.px int 1 run scoreboard players get $px rcube_dragonRework.death.temp
data modify storage rcube:api/centre_string in.manual set value true
function rcube:api/centre_string/run

# Output text
tellraw @a[tag=dragon_rework.player.your_dmg.temp] ["",{"nbt":"out[].array","storage":"rcube:api/centre_string","interpret":true,"separator":""},{"text":"Your Damage: ","color":"yellow"},{"score": {"objective": "rcube_dragonRework.death.damage.total", "name": "@s"},"color": "green"},{"text": " (Position #","color": "gray"},{"score": {"objective": "rcube_dragonRework.death.damage.rank","name": "@s"},"color": "gray"},{"text": ")","color": "gray"}]

# #####################
# Other
# #####################

# Remove tag
tag @a[tag=dragon_rework.player.your_dmg.temp] remove dragon_rework.player.your_dmg.temp

# Run if another player
execute if entity @a[scores={rcube_dragonRework.death.players_do=1}] run function rcube:dragon_rework/death/your_dmg