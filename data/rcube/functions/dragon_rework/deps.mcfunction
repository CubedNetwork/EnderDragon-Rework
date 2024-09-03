# Made by: @rcube.
# Run dependency check
#
# Called By: rcube:dragon_rework/load

# Remove stale data
data remove storage rcube:dragon_rework private.dependencies
scoreboard players reset * rcube_dragonRework.deps

# Module 'core'
execute if predicate rcube:_core/installed run function rcube:api/_core/installed
execute if predicate rcube:_core/installed if data storage rcube:api/core {installed:true} run data modify storage rcube:dragon_rework private.dependencies append value {module:"core",installed:true}
execute unless data storage rcube:dragon_rework private.dependencies[{module:"core",installed:true}] run data modify storage rcube:dragon_rework private.dependencies append value {module:"core",installed:false,missing:'[{"text":"   - ","color":"dark_gray"},{"text":"Module \'core\'","color":"gray"}]'}

# Module 'centre_string'
execute if predicate rcube:centre_string/installed run function rcube:api/centre_string/installed
execute if predicate rcube:centre_string/installed if data storage rcube:api/centre_string {installed:true} run data modify storage rcube:dragon_rework private.dependencies append value {module:"centre_string",installed:true}
execute unless data storage rcube:dragon_rework private.dependencies[{module:"centre_string",installed:true}] run data modify storage rcube:dragon_rework private.dependencies append value {module:"centre_string",installed:false,missing:'[{"text":"   - ","color":"dark_gray"},{"text":"Module \'centre_string\'","color":"gray"}]'}

# Module 'damage_dealt'
execute if predicate rcube:damage_dealt/installed run function rcube:api/damage_dealt/installed
execute if predicate rcube:damage_dealt/installed if data storage rcube:api/damage_dealt {installed:true} run data modify storage rcube:dragon_rework private.dependencies append value {module:"damage_dealt",installed:true}
execute unless data storage rcube:dragon_rework private.dependencies[{module:"damage_dealt",installed:true}] run data modify storage rcube:dragon_rework private.dependencies append value {module:"damage_dealt",installed:false,missing:'[{"text":"   - ","color":"dark_gray"},{"text":"Module \'damage_dealt\'","color":"gray"}]'}

# Module 'player_name'
execute if predicate rcube:player_name/installed run function rcube:api/player_name/installed
execute if predicate rcube:player_name/installed if data storage rcube:api/player_name {installed:true} run data modify storage rcube:dragon_rework private.dependencies append value {module:"player_name",installed:true}
execute unless data storage rcube:dragon_rework private.dependencies[{module:"player_name",installed:true}] run data modify storage rcube:dragon_rework private.dependencies append value {module:"player_name",installed:false,missing:'[{"text":"   - ","color":"dark_gray"},{"text":"Module \'player_name\'","color":"gray"}]'}

# Module 'px_calc'
execute if predicate rcube:px_calc/installed run function rcube:api/px_calc/installed
execute if predicate rcube:px_calc/installed if data storage rcube:api/px_calc {installed:true} run data modify storage rcube:dragon_rework private.dependencies append value {module:"px_calc",installed:true}
execute unless data storage rcube:dragon_rework private.dependencies[{module:"px_calc",installed:true}] run data modify storage rcube:dragon_rework private.dependencies append value {module:"px_calc",installed:false,missing:'[{"text":"   - ","color":"dark_gray"},{"text":"Module \'px_calc\'","color":"gray"}]'}

# Module 'scoreboard_rank'
execute if predicate rcube:scoreboard_rank/installed run function rcube:api/scoreboard_rank/installed
execute if predicate rcube:scoreboard_rank/installed if data storage rcube:api/scoreboard_rank {installed:true} run data modify storage rcube:dragon_rework private.dependencies append value {module:"scoreboard_rank",installed:true}
execute unless data storage rcube:dragon_rework private.dependencies[{module:"scoreboard_rank",installed:true}] run data modify storage rcube:dragon_rework private.dependencies append value {module:"scoreboard_rank",installed:false,missing:'[{"text":"   - ","color":"dark_gray"},{"text":"Module \'scoreboard_rank\'","color":"gray"}]'}

# Check if all dependencies are installed 
execute store result score $deps.required rcube_dragonRework.deps if data storage rcube:dragon_rework private.dependencies[]
execute store result score $deps.installed rcube_dragonRework.deps if data storage rcube:dragon_rework private.dependencies[{installed:true}]
execute if score $deps.installed rcube_dragonRework.deps = $deps.required rcube_dragonRework.deps run data modify storage rcube:dragon_rework private.dependencies prepend value {all:true}
execute unless score $deps.installed rcube_dragonRework.deps = $deps.required rcube_dragonRework.deps run data modify storage rcube:dragon_rework private.dependencies prepend value {all:false}
