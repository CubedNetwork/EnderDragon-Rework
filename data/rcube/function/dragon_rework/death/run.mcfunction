# Made by: @rcube.
# Give participants advancement
# Send dragon down message
# Utilises RCube-API:
#   - 'core'
#   - 'centre_string'
#   - 'damage_dealt'
#   - 'player_name'
#   - 'px_calc'
#   - 'scoreboard_rank'
#
# Called By: rcube:dragon_rework/kill_dragon (ADVANCEMENT)
# Ran as: Entity, Player

# Update damage dealt
# (dragon most of the time would not fully dead yet, not all damage has been totaled)
#    - This is due to this function often being run by advancement trigger
execute as @e[tag=dragon_rework.dragonInit] run function rcube:api/damage_dealt/check

# Remove stale data
scoreboard players reset * rcube_dragonRework.death.damage.total
scoreboard players reset * rcube_dragonRework.death.damage.rank
scoreboard players reset * rcube_dragonRework.death.players_do

# Tag persistent marker
tag @e[tag=dragon_rework.monumentMarker] add dragon_rework.defeated

# Check damaged players
execute as @a[scores={rcubeAPI_damageDealt.damage.total=-2147483648..2147483647}] if score @s rcubeAPI_damageDealt.UUID0 = $ender_dragon rcube_dragonRework.UUID0 if score @s rcubeAPI_damageDealt.UUID1 = $ender_dragon rcube_dragonRework.UUID1 if score @s rcubeAPI_damageDealt.UUID2 = $ender_dragon rcube_dragonRework.UUID2 if score @s rcubeAPI_damageDealt.UUID3 = $ender_dragon rcube_dragonRework.UUID3 run tag @s add dragon_rework.player.damaged_dragon

# Store damage totals
execute as @a[tag=dragon_rework.player.damaged_dragon] run scoreboard players operation @s rcube_dragonRework.death.damage.total = @s rcubeAPI_damageDealt.damage.total
execute as @a[tag=dragon_rework.player.participated] unless score @s rcube_dragonRework.death.damage.total matches -2147483648..2147483647 run scoreboard players set @s rcube_dragonRework.death.damage.total 0

# Rank players (Utilises module 'scoreboard_rank')
execute as @a[tag=dragon_rework.player.damaged_dragon] run scoreboard players operation @s rcubeAPI_scoreboardRank.in = @s rcube_dragonRework.death.damage.total
function rcube:api/scoreboard_rank/run
execute as @a[tag=dragon_rework.player.participated] run scoreboard players operation @s rcube_dragonRework.death.damage.rank = @s rcubeAPI_scoreboardRank.out

# #####################
# Text
# #####################

tellraw @a[tag=dragon_rework.player.participated] ""
tellraw @a[tag=dragon_rework.player.participated] ["",{"text":"-----------------------------------------------------","strikethrough":true,"color":"green"}]
tellraw @a[tag=dragon_rework.player.participated] ["",{"text":"\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c","bold": true},{"text":"ENDER DRAGON DOWN!","color":"gold","bold":true}]
execute if entity @a[scores={rcube_dragonRework.death.damage.rank=-2147483648..2147483647}] run tellraw @a[tag=dragon_rework.player.participated] ""

# Final blow message
execute if entity @a[advancements={rcube:dragon_rework/kill_dragon=true}] run scoreboard players reset * rcube_dragonRework.death.temp
execute as @a[advancements={rcube:dragon_rework/kill_dragon=true}] run function rcube:api/player_name/run
execute if entity @a[advancements={rcube:dragon_rework/kill_dragon=true}] run data modify storage rcube:api/px_calc in.str set from storage rcube:api/player_name out.username
execute if entity @a[advancements={rcube:dragon_rework/kill_dragon=true}] run function rcube:api/px_calc/run
execute if entity @a[advancements={rcube:dragon_rework/kill_dragon=true}] store result score $px rcube_dragonRework.death.temp run data get storage rcube:api/px_calc out.px
execute if entity @a[advancements={rcube:dragon_rework/kill_dragon=true}] run scoreboard players operation $px rcube_dragonRework.death.temp += #num.102 rcube_dragonRework.const
execute if entity @a[advancements={rcube:dragon_rework/kill_dragon=true}] store result storage rcube:api/centre_string in.px int 1 run scoreboard players get $px rcube_dragonRework.death.temp
execute if entity @a[advancements={rcube:dragon_rework/kill_dragon=true}] run data modify storage rcube:api/centre_string in.manual set value true
execute if entity @a[advancements={rcube:dragon_rework/kill_dragon=true}] run function rcube:api/centre_string/run
execute as @a[advancements={rcube:dragon_rework/kill_dragon=true},limit=1] run tellraw @a[tag=dragon_rework.player.participated] ["",{"nbt":"out[].array","storage":"rcube:api/centre_string","interpret":true,"separator":""},{"nbt":"out.username","storage":"rcube:api/player_name","color":"dark_gray"},{"text":" dealt the final blow.","color":"gray"}]
execute if entity @a[advancements={rcube:dragon_rework/kill_dragon=true}] run tellraw @a[tag=dragon_rework.player.participated] ""

# 1st damager
scoreboard players reset * rcube_dragonRework.death.temp
execute as @a[scores={rcube_dragonRework.death.damage.rank=1}] run function rcube:api/player_name/run
data modify storage rcube:api/px_calc in.str set from storage rcube:api/player_name out.username
function rcube:api/px_calc/run
execute store result score $px rcube_dragonRework.death.temp run data get storage rcube:api/px_calc out.px
execute as @a[scores={rcube_dragonRework.death.damage.rank=1}] store result storage rcube:api/px_calc in.str int 1 run scoreboard players get @s rcube_dragonRework.death.damage.total
data modify storage rcube:api/px_calc in.str set string storage rcube:api/px_calc in.str
function rcube:api/px_calc/run
execute store result score $dmg rcube_dragonRework.death.temp run data get storage rcube:api/px_calc out.px
scoreboard players operation $px rcube_dragonRework.death.temp += $dmg rcube_dragonRework.death.temp
scoreboard players operation $px rcube_dragonRework.death.temp += #num.73 rcube_dragonRework.const
scoreboard players operation $px rcube_dragonRework.death.temp += #num.24 rcube_dragonRework.const
execute store result storage rcube:api/centre_string in.px int 1 run scoreboard players get $px rcube_dragonRework.death.temp
data modify storage rcube:api/centre_string in.manual set value true
function rcube:api/centre_string/run
execute as @a[scores={rcube_dragonRework.death.damage.rank=1},limit=1] run tellraw @a[tag=dragon_rework.player.participated] ["",{"nbt":"out[].array","storage":"rcube:api/centre_string","interpret":true,"separator":""},{"text": "1st Damager","color": "yellow","bold": true},{"text": " - ","color": "gray"},{"nbt":"out.username","storage":"rcube:api/player_name","color":"gray"},{"text": " - ","color": "gray"},{"score": {"objective": "rcube_dragonRework.death.damage.total","name": "@s"},"color": "yellow"}]

# 2nd damager
scoreboard players reset * rcube_dragonRework.death.temp
execute as @a[scores={rcube_dragonRework.death.damage.rank=2}] run function rcube:api/player_name/run
data modify storage rcube:api/px_calc in.str set from storage rcube:api/player_name out.username
function rcube:api/px_calc/run
execute store result score $px rcube_dragonRework.death.temp run data get storage rcube:api/px_calc out.px
execute as @a[scores={rcube_dragonRework.death.damage.rank=2}] store result storage rcube:api/px_calc in.str int 1 run scoreboard players get @s rcube_dragonRework.death.damage.total
data modify storage rcube:api/px_calc in.str set string storage rcube:api/px_calc in.str
function rcube:api/px_calc/run
execute store result score $dmg rcube_dragonRework.death.temp run data get storage rcube:api/px_calc out.px
scoreboard players operation $px rcube_dragonRework.death.temp += $dmg rcube_dragonRework.death.temp
scoreboard players operation $px rcube_dragonRework.death.temp += #num.75 rcube_dragonRework.const
scoreboard players operation $px rcube_dragonRework.death.temp += #num.24 rcube_dragonRework.const
execute store result storage rcube:api/centre_string in.px int 1 run scoreboard players get $px rcube_dragonRework.death.temp
data modify storage rcube:api/centre_string in.manual set value true
function rcube:api/centre_string/run
execute as @a[scores={rcube_dragonRework.death.damage.rank=2},limit=1] run tellraw @a[tag=dragon_rework.player.participated] ["",{"nbt":"out[].array","storage":"rcube:api/centre_string","interpret":true,"separator":""},{"text": "2nd Damager","color": "gold","bold": true},{"text": " - ","color": "gray"},{"nbt":"out.username","storage":"rcube:api/player_name","color":"gray"},{"text": " - ","color": "gray"},{"score": {"objective": "rcube_dragonRework.death.damage.total","name": "@s"},"color": "yellow"}]

# 3rd damager
scoreboard players reset * rcube_dragonRework.death.temp
execute as @a[scores={rcube_dragonRework.death.damage.rank=3}] run function rcube:api/player_name/run
data modify storage rcube:api/px_calc in.str set from storage rcube:api/player_name out.username
function rcube:api/px_calc/run
execute store result score $px rcube_dragonRework.death.temp run data get storage rcube:api/px_calc out.px
execute as @a[scores={rcube_dragonRework.death.damage.rank=3}] store result storage rcube:api/px_calc in.str int 1 run scoreboard players get @s rcube_dragonRework.death.damage.total
data modify storage rcube:api/px_calc in.str set string storage rcube:api/px_calc in.str
function rcube:api/px_calc/run
execute store result score $dmg rcube_dragonRework.death.temp run data get storage rcube:api/px_calc out.px
scoreboard players operation $px rcube_dragonRework.death.temp += $dmg rcube_dragonRework.death.temp
scoreboard players operation $px rcube_dragonRework.death.temp += #num.75 rcube_dragonRework.const
scoreboard players operation $px rcube_dragonRework.death.temp += #num.24 rcube_dragonRework.const
execute store result storage rcube:api/centre_string in.px int 1 run scoreboard players get $px rcube_dragonRework.death.temp
data modify storage rcube:api/centre_string in.manual set value true
function rcube:api/centre_string/run
execute as @a[scores={rcube_dragonRework.death.damage.rank=3},limit=1] run tellraw @a[tag=dragon_rework.player.participated] ["",{"nbt":"out[].array","storage":"rcube:api/centre_string","interpret":true,"separator":""},{"text": "3rd Damager","color": "red","bold": true},{"text": " - ","color": "gray"},{"nbt":"out.username","storage":"rcube:api/player_name","color":"gray"},{"text": " - ","color": "gray"},{"score": {"objective": "rcube_dragonRework.death.damage.total","name": "@s"},"color": "yellow"}]
execute if entity @a[scores={rcube_dragonRework.death.damage.rank=-2147483648..2147483647}] run tellraw @a[tag=dragon_rework.player.participated] ""

# Your Damage
execute as @a[tag=dragon_rework.player.participated] run scoreboard players set @s rcube_dragonRework.death.players_do 1
function rcube:dragon_rework/death/your_dmg

# First time defeated
execute unless data storage rcube:dragon_rework root{previously_defeated:true} run tellraw @a[tag=dragon_rework.player.participated] ["",{"text":"\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c","bold":true},{"text":"This boss hasn't been killed before, you are","color":"yellow"}]
execute unless data storage rcube:dragon_rework root{previously_defeated:true} run tellraw @a[tag=dragon_rework.player.participated] ["",{"text":"\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c","bold":true},{"text":"eligible for the ","color":"yellow"},{"text":"[","color":"dark_purple","hoverEvent":{"action":"show_item","contents":{"id":"minecraft:dragon_egg","count":1}}},{"text":"Dragon Egg","color":"light_purple","hoverEvent":{"action":"show_item","contents":{"id":"minecraft:dragon_egg","count":1}}},{"text":"]","color":"dark_purple","color":"dark_purple","hoverEvent":{"action":"show_item","contents":{"id":"minecraft:dragon_egg","count":1}}}]

# Has been defeated previously 
execute if data storage rcube:dragon_rework root{previously_defeated:true} run tellraw @a[tag=dragon_rework.player.participated] ["",{"text":"\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c","bold": true},{"text":"This boss has been killed before, you are not","color":"red"}]
execute if data storage rcube:dragon_rework root{previously_defeated:true} run tellraw @a[tag=dragon_rework.player.participated] ["",{"text":"\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c\u200c","bold": true},{"text":"eligible for the ","color":"red"},{"text":"[","color":"dark_purple","hoverEvent":{"action":"show_item","contents":{"id":"minecraft:dragon_egg","count":1}}},{"text":"Dragon Egg","color":"light_purple","hoverEvent":{"action":"show_item","contents":{"id":"minecraft:dragon_egg","count":1}}},{"text":"]","color":"dark_purple","color":"dark_purple","hoverEvent":{"action":"show_item","contents":{"id":"minecraft:dragon_egg","count":1}}}]

execute run tellraw @a[tag=dragon_rework.player.participated] ""
execute run tellraw @a[tag=dragon_rework.player.participated] ["",{"text":"-----------------------------------------------------","strikethrough":true,"color":"green"}]
execute run tellraw @a[tag=dragon_rework.player.participated] ""

# #####################
# Other
# #####################

# Grant "Free the End" advancement
execute as @a[tag=dragon_rework.player.participated,advancements={minecraft:end/kill_dragon=false}] run advancement grant @s[gamemode=!spectator] only minecraft:end/kill_dragon

# Save data (has been defeated)
execute unless data storage rcube:dragon_rework root{previously_defeated:true} run data modify storage rcube:dragon_rework root.previously_defeated set value true

# Revoke trigger advancement
advancement revoke @a[advancements={rcube:dragon_rework/kill_dragon=true}] only rcube:dragon_rework/kill_dragon

# Set death message sent to true
data modify storage rcube:dragon_rework root.death_message_done set value true

# Remove tags
tag @a[tag=dragon_rework.player.participated] remove dragon_rework.player.participated
