# Made by: @rcube.
# Run dependency check
#
# Called By: rcube:dragon_rework/load

# Remove stale data
data remove storage rcube:dragon_rework root.dependencies
scoreboard players reset * rcube_dragonRework.deps

# #####################
# Module 'core'
# #####################
# Store versions
execute if predicate rcube:api/_core/installed run function rcube:api/_core/installed
execute if predicate rcube:api/_core/installed if data storage rcube:api/core root{installed:true} store result score $ver.core.major rcube_dragonRework.deps run data get storage rcube:api/core root.version.this.major
execute if predicate rcube:api/_core/installed if data storage rcube:api/core root{installed:true} store result score $ver.core.minor rcube_dragonRework.deps run data get storage rcube:api/core root.version.this.minor
execute if predicate rcube:api/_core/installed if data storage rcube:api/core root{installed:true} store result score $ver.core.patch rcube_dragonRework.deps run data get storage rcube:api/core root.version.this.patch
execute if predicate rcube:api/_core/installed if data storage rcube:api/core root{installed:true} store result score $ver.core.game.major rcube_dragonRework.deps run data get storage rcube:api/core root.version.game.major
execute if predicate rcube:api/_core/installed if data storage rcube:api/core root{installed:true} store result score $ver.core.game.patch rcube_dragonRework.deps run data get storage rcube:api/core root.version.game.patch

# Set state
execute if predicate rcube:api/_core/installed if data storage rcube:api/core root{installed:true} if score $ver.core.major rcube_dragonRework.deps matches 0 if score $ver.core.game.major rcube_dragonRework.deps matches 21 if score $ver.core.game.patch rcube_dragonRework.deps matches 2 run data modify storage rcube:dragon_rework root.dependencies append value {module:"core",installed:true}
execute unless data storage rcube:dragon_rework root.dependencies[{module:"core",installed:true}] run data modify storage rcube:dragon_rework root.dependencies append value {module:"core",installed:false,missing:'[{"text":"   - ","color":"dark_gray"},{"text":"Module \'core\'","color":"gray"}]'}


# #####################
# Module 'centre_string'
# #####################
# Store versions
execute if predicate rcube:api/centre_string/installed run function rcube:api/centre_string/installed
execute if predicate rcube:api/centre_string/installed if data storage rcube:api/centre_string root{installed:true} store result score $ver.centre_string.major rcube_dragonRework.deps run data get storage rcube:api/centre_string root.version.this.major
execute if predicate rcube:api/centre_string/installed if data storage rcube:api/centre_string root{installed:true} store result score $ver.centre_string.minor rcube_dragonRework.deps run data get storage rcube:api/centre_string root.version.this.minor
execute if predicate rcube:api/centre_string/installed if data storage rcube:api/centre_string root{installed:true} store result score $ver.centre_string.patch rcube_dragonRework.deps run data get storage rcube:api/centre_string root.version.this.patch
execute if predicate rcube:api/centre_string/installed if data storage rcube:api/centre_string root{installed:true} store result score $ver.centre_string.game.major rcube_dragonRework.deps run data get storage rcube:api/centre_string root.version.game.major
execute if predicate rcube:api/centre_string/installed if data storage rcube:api/centre_string root{installed:true} store result score $ver.centre_string.game.patch rcube_dragonRework.deps run data get storage rcube:api/centre_string root.version.game.patch

# Set state
execute if predicate rcube:api/centre_string/installed if data storage rcube:api/centre_string root{installed:true} if score $ver.centre_string.major rcube_dragonRework.deps matches 0 if score $ver.centre_string.game.major rcube_dragonRework.deps matches 21 if score $ver.centre_string.game.patch rcube_dragonRework.deps matches 2 run data modify storage rcube:dragon_rework root.dependencies append value {module:"centre_string",installed:true}
execute unless data storage rcube:dragon_rework root.dependencies[{module:"centre_string",installed:true}] run data modify storage rcube:dragon_rework root.dependencies append value {module:"centre_string",installed:false,missing:'[{"text":"   - ","color":"dark_gray"},{"text":"Module \'centre_string\'","color":"gray"}]'}


# #####################
# Module 'damage_taken'
# #####################
# Store versions
execute if predicate rcube:api/damage_taken/installed run function rcube:api/damage_taken/installed
execute if predicate rcube:api/damage_taken/installed if data storage rcube:api/damage_taken root{installed:true} store result score $ver.damage_taken.major rcube_dragonRework.deps run data get storage rcube:api/damage_taken root.version.this.major
execute if predicate rcube:api/damage_taken/installed if data storage rcube:api/damage_taken root{installed:true} store result score $ver.damage_taken.minor rcube_dragonRework.deps run data get storage rcube:api/damage_taken root.version.this.minor
execute if predicate rcube:api/damage_taken/installed if data storage rcube:api/damage_taken root{installed:true} store result score $ver.damage_taken.patch rcube_dragonRework.deps run data get storage rcube:api/damage_taken root.version.this.patch
execute if predicate rcube:api/damage_taken/installed if data storage rcube:api/damage_taken root{installed:true} store result score $ver.damage_taken.game.major rcube_dragonRework.deps run data get storage rcube:api/damage_taken root.version.game.major
execute if predicate rcube:api/damage_taken/installed if data storage rcube:api/damage_taken root{installed:true} store result score $ver.damage_taken.game.patch rcube_dragonRework.deps run data get storage rcube:api/damage_taken root.version.game.patch

# Set state
execute if predicate rcube:api/damage_taken/installed if data storage rcube:api/damage_taken root{installed:true} if score $ver.damage_taken.major rcube_dragonRework.deps matches 0 if score $ver.damage_taken.game.major rcube_dragonRework.deps matches 21 if score $ver.damage_taken.game.patch rcube_dragonRework.deps matches 2 run data modify storage rcube:dragon_rework root.dependencies append value {module:"damage_taken",installed:true}
execute unless data storage rcube:dragon_rework root.dependencies[{module:"damage_taken",installed:true}] run data modify storage rcube:dragon_rework root.dependencies append value {module:"damage_taken",installed:false,missing:'[{"text":"   - ","color":"dark_gray"},{"text":"Module \'damage_taken\'","color":"gray"}]'}

# #####################
# Module 'player_name'
# #####################
# Store versions
execute if predicate rcube:api/player_name/installed run function rcube:api/player_name/installed
execute if predicate rcube:api/player_name/installed if data storage rcube:api/player_name root{installed:true} store result score $ver.player_name.major rcube_dragonRework.deps run data get storage rcube:api/player_name root.version.this.major
execute if predicate rcube:api/player_name/installed if data storage rcube:api/player_name root{installed:true} store result score $ver.player_name.minor rcube_dragonRework.deps run data get storage rcube:api/player_name root.version.this.minor
execute if predicate rcube:api/player_name/installed if data storage rcube:api/player_name root{installed:true} store result score $ver.player_name.patch rcube_dragonRework.deps run data get storage rcube:api/player_name root.version.this.patch
execute if predicate rcube:api/player_name/installed if data storage rcube:api/player_name root{installed:true} store result score $ver.player_name.game.major rcube_dragonRework.deps run data get storage rcube:api/player_name root.version.game.major
execute if predicate rcube:api/player_name/installed if data storage rcube:api/player_name root{installed:true} store result score $ver.player_name.game.patch rcube_dragonRework.deps run data get storage rcube:api/player_name root.version.game.patch

# Set state
execute if predicate rcube:api/player_name/installed if data storage rcube:api/player_name root{installed:true} if score $ver.player_name.major rcube_dragonRework.deps matches 0 if score $ver.player_name.game.major rcube_dragonRework.deps matches 21 if score $ver.player_name.game.patch rcube_dragonRework.deps matches 2 run data modify storage rcube:dragon_rework root.dependencies append value {module:"player_name",installed:true}
execute unless data storage rcube:dragon_rework root.dependencies[{module:"player_name",installed:true}] run data modify storage rcube:dragon_rework root.dependencies append value {module:"player_name",installed:false,missing:'[{"text":"   - ","color":"dark_gray"},{"text":"Module \'player_name\'","color":"gray"}]'}


# #####################
# Module 'px_calc'
# #####################
# Store versions
execute if predicate rcube:api/px_calc/installed run function rcube:api/px_calc/installed
execute if predicate rcube:api/px_calc/installed if data storage rcube:api/px_calc root{installed:true} store result score $ver.px_calc.major rcube_dragonRework.deps run data get storage rcube:api/px_calc root.version.this.major
execute if predicate rcube:api/px_calc/installed if data storage rcube:api/px_calc root{installed:true} store result score $ver.px_calc.minor rcube_dragonRework.deps run data get storage rcube:api/px_calc root.version.this.minor
execute if predicate rcube:api/px_calc/installed if data storage rcube:api/px_calc root{installed:true} store result score $ver.px_calc.patch rcube_dragonRework.deps run data get storage rcube:api/px_calc root.version.this.patch
execute if predicate rcube:api/px_calc/installed if data storage rcube:api/px_calc root{installed:true} store result score $ver.px_calc.game.major rcube_dragonRework.deps run data get storage rcube:api/px_calc root.version.game.major
execute if predicate rcube:api/px_calc/installed if data storage rcube:api/px_calc root{installed:true} store result score $ver.px_calc.game.patch rcube_dragonRework.deps run data get storage rcube:api/px_calc root.version.game.patch

# Set state
execute if predicate rcube:api/px_calc/installed if data storage rcube:api/px_calc root{installed:true} if score $ver.px_calc.major rcube_dragonRework.deps matches 0 if score $ver.px_calc.game.major rcube_dragonRework.deps matches 21 if score $ver.px_calc.game.patch rcube_dragonRework.deps matches 2 run data modify storage rcube:dragon_rework root.dependencies append value {module:"px_calc",installed:true}
execute unless data storage rcube:dragon_rework root.dependencies[{module:"px_calc",installed:true}] run data modify storage rcube:dragon_rework root.dependencies append value {module:"px_calc",installed:false,missing:'[{"text":"   - ","color":"dark_gray"},{"text":"Module \'px_calc\'","color":"gray"}]'}


# #####################
# Module 'scoreboard_rank'
# #####################
# Store versions
execute if predicate rcube:api/scoreboard_rank/installed run function rcube:api/scoreboard_rank/installed
execute if predicate rcube:api/scoreboard_rank/installed if data storage rcube:api/scoreboard_rank root{installed:true} store result score $ver.scoreboard_rank.major rcube_dragonRework.deps run data get storage rcube:api/scoreboard_rank root.version.this.major
execute if predicate rcube:api/scoreboard_rank/installed if data storage rcube:api/scoreboard_rank root{installed:true} store result score $ver.scoreboard_rank.minor rcube_dragonRework.deps run data get storage rcube:api/scoreboard_rank root.version.this.minor
execute if predicate rcube:api/scoreboard_rank/installed if data storage rcube:api/scoreboard_rank root{installed:true} store result score $ver.scoreboard_rank.patch rcube_dragonRework.deps run data get storage rcube:api/scoreboard_rank root.version.this.patch
execute if predicate rcube:api/scoreboard_rank/installed if data storage rcube:api/scoreboard_rank root{installed:true} store result score $ver.scoreboard_rank.game.major rcube_dragonRework.deps run data get storage rcube:api/scoreboard_rank root.version.game.major
execute if predicate rcube:api/scoreboard_rank/installed if data storage rcube:api/scoreboard_rank root{installed:true} store result score $ver.scoreboard_rank.game.patch rcube_dragonRework.deps run data get storage rcube:api/scoreboard_rank root.version.game.patch

# Set state
execute if predicate rcube:api/scoreboard_rank/installed if data storage rcube:api/scoreboard_rank root{installed:true} if score $ver.scoreboard_rank.major rcube_dragonRework.deps matches 0 if score $ver.scoreboard_rank.game.major rcube_dragonRework.deps matches 21 if score $ver.scoreboard_rank.game.patch rcube_dragonRework.deps matches 2 run data modify storage rcube:dragon_rework root.dependencies append value {module:"scoreboard_rank",installed:true}
execute unless data storage rcube:dragon_rework root.dependencies[{module:"scoreboard_rank",installed:true}] run data modify storage rcube:dragon_rework root.dependencies append value {module:"scoreboard_rank",installed:false,missing:'[{"text":"   - ","color":"dark_gray"},{"text":"Module \'scoreboard_rank\'","color":"gray"}]'}

# #####################
# Check if all dependencies are installed 
execute store result score $deps.required rcube_dragonRework.deps if data storage rcube:dragon_rework root.dependencies[]
execute store result score $deps.installed rcube_dragonRework.deps if data storage rcube:dragon_rework root.dependencies[{installed:true}]
execute if score $deps.installed rcube_dragonRework.deps = $deps.required rcube_dragonRework.deps run data modify storage rcube:dragon_rework root.dependencies prepend value {all:true}
execute unless score $deps.installed rcube_dragonRework.deps = $deps.required rcube_dragonRework.deps run data modify storage rcube:dragon_rework root.dependencies prepend value {all:false}
