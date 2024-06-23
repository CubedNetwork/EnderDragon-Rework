# Made by: @rcube.
# Register this datapack and all its dependencies
#
# Called By: #minecraft:load

# Loaded Message
tellraw @a {"text":"Dragon Rework","color":"dark_purple"}

# Data
scoreboard objectives add rcube_dragonRework.attackTimer dummy
scoreboard objectives add rcube_dragonRework.phase dummy
scoreboard objectives add rcube_dragonRework.dragonHealth dummy
scoreboard objectives add rcube_dragonRework.store dummy
scoreboard objectives add rcube_dragonRework.UUID0 dummy
scoreboard objectives add rcube_dragonRework.UUID1 dummy
scoreboard objectives add rcube_dragonRework.UUID2 dummy
scoreboard objectives add rcube_dragonRework.UUID3 dummy

# Miniboss Bossbar
bossbar add rcube:dragon_rework.miniboss {"text":"Warrior of Years Past","color":"red","bold":false,"italic":false,"underlined":false}
bossbar set rcube:dragon_rework.miniboss color yellow

# Monument Marker
execute in minecraft:the_end unless entity @e[tag=dragon_rework.monumentMarker] run summon marker 0 200 0 {Tags:["dragon_rework.monumentMarker"]}