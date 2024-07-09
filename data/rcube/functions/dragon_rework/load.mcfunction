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
team add rcube_dragonRework.color.purple "Purple Glow"
team modify rcube_dragonRework.color.purple color dark_purple
team add rcube_dragonRework.color.miniboss "Yellow Glow"
team modify rcube_dragonRework.color.miniboss color yellow
team add rcube_dragonRework.color.gray "Light gray Glow"
team modify rcube_dragonRework.color.gray color gray

# Miniboss Bossbar
bossbar add rcube:dragon_rework.miniboss {"text":"Warrior of Years Past","color":"red","bold":false,"italic":false,"underlined":false}
bossbar set rcube:dragon_rework.miniboss color yellow

# Monument Marker
execute in minecraft:the_end unless entity @e[tag=dragon_rework.monumentMarker,type=minecraft:marker] run summon marker 0 200 0 {Tags:["dragon_rework.monumentMarker"]}