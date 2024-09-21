# Made by: @rcube.
# Register this datapack and all its dependencies
#
# Called By: #minecraft:load

# Check dependencies
function rcube:dragon_rework/deps

# Setup prefix
data modify storage rcube:dragon_rework root.prefix set value [{array:'{"text": "Dragon Rework","color": "light_purple"}'},{array:'{"text": " > ","color": "gray"}'}]

# Data
scoreboard objectives add rcube_dragonRework.timer.attacks dummy
scoreboard objectives add rcube_dragonRework.phase dummy
scoreboard objectives add rcube_dragonRework.health dummy "[rcube:dragon_rework] Health"
scoreboard objectives add rcube_dragonRework.store dummy
scoreboard objectives add rcube_dragonRework.timer.music dummy
scoreboard objectives add rcube_dragonRework.UUID0 dummy
scoreboard objectives add rcube_dragonRework.UUID1 dummy
scoreboard objectives add rcube_dragonRework.UUID2 dummy
scoreboard objectives add rcube_dragonRework.UUID3 dummy
scoreboard objectives add rcube_dragonRework.const dummy
scoreboard objectives add rcube_dragonRework.temp dummy "[rcube:dragon_rework] Temp (clear)"
scoreboard objectives add rcube_dragonRework.death.damage.total dummy
scoreboard objectives add rcube_dragonRework.death.damage.rank dummy
scoreboard objectives add rcube_dragonRework.death.players_do dummy
scoreboard objectives add rcube_dragonRework.death.temp dummy
scoreboard objectives add rcube_dragonRework.deps dummy

# Pixel Data
# "PLAYER dealt the final blow."
scoreboard players set #num.102 rcube_dragonRework.const 102
# " - PLAYER - DMG"
scoreboard players set #num.24 rcube_dragonRework.const 24
# "1st Damager", bold
scoreboard players set #num.73 rcube_dragonRework.const 73
# "2nd Damager" / "3rd Damager", bold
scoreboard players set #num.75 rcube_dragonRework.const 75
# "Your Damage: DMG (Position #x)"
scoreboard players set #num.132 rcube_dragonRework.const 132

# Teams
team add rcube.dragon_rework "[rcube:dragon_rework] Prevent Friendly Fire"
team modify rcube.dragon_rework friendlyFire false
team modify rcube.dragon_rework color yellow

# Miniboss Bossbar
bossbar add rcube:dragon_rework.miniboss {"text":"Warrior of Years Past","bold":false,"italic":false,"underlined":false}
bossbar set rcube:dragon_rework.miniboss color yellow
bossbar set rcube:dragon_rework.miniboss max 150

# Monument Marker
execute in minecraft:the_end unless entity @e[tag=dragon_rework.monumentMarker,type=minecraft:marker] run summon marker 0 200 0 {Tags:["dragon_rework.monumentMarker"]}

# Load Message
execute unless data storage rcube:dragon_rework root.load_message run data modify storage rcube:dragon_rework root.load_message set value true
execute if data storage rcube:dragon_rework root{load_message:true,installed:true} run tellraw @a ["",{"nbt": "root.prefix[].array","storage": "rcube:dragon_rework","interpret": true},"Reloaded."]
execute if data storage rcube:dragon_rework root{load_message:true} unless data storage rcube:dragon_rework root{installed:true} run tellraw @a ["",{"nbt": "root.prefix[].array","storage": "rcube:dragon_rework","interpret": true},"is missing dependencies.\n",{"text": "   Missing Dependencies:\n"},{"nbt":"dependencies[].missing[]","storage":"rcube:dragon_rework","interpret":true,"separator":"\n\n"}]
