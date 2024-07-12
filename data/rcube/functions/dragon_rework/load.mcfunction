# Made by: @rcube.
# Register this datapack and all its dependencies
#
# Called By: #minecraft:load

# Loaded Message
tellraw @a {"text":"Dragon Rework","color":"dark_purple"}

# Data
scoreboard objectives add rcube_dragonRework.timer.attacks dummy
scoreboard objectives add rcube_dragonRework.phase dummy
scoreboard objectives add rcube_dragonRework.dragon.health dummy
scoreboard objectives add rcube_dragonRework.store dummy
scoreboard objectives add rcube_dragonRework.timer.music dummy

# Teams
team add rcube.dragon_rework.color.purple "Purple Glow"
team modify rcube.dragon_rework.color.purple color dark_purple
team add rcube.dragon_rework.color.yellow "Yellow Glow"
team modify rcube.dragon_rework.color.yellow color yellow
team add rcube.dragon_rework.color.gray "Light gray Glow"
team modify rcube.dragon_rework.color.gray color gray

# Miniboss Bossbar
bossbar add rcube:dragon_rework.miniboss {"text":"Warrior of Years Past","bold":false,"italic":false,"underlined":false}
bossbar set rcube:dragon_rework.miniboss color yellow
bossbar set rcube:dragon_rework.miniboss max 150

# Monument Marker
execute in minecraft:the_end unless entity @e[tag=dragon_rework.monumentMarker,type=minecraft:marker] run summon marker 0 200 0 {Tags:["dragon_rework.monumentMarker"]}