# Made by: @rcube.
# Summon arrow
#
# Called By: rcube:dragon_rework/sch/fireball/rapid/launch, THIS

# Cycle victim
execute as @a[scores={rcube_dragonRework.temp=5},limit=1] run tag @s add dragon_rework.miniboss.arrow_beam.VICTIM.temp
scoreboard players reset @a[tag=dragon_rework.miniboss.arrow_beam.VICTIM.temp] rcube_dragonRework.temp
execute as @a[tag=dragon_rework.miniboss.arrow_beam.VICTIM.temp] run tag @s add dragon_rework.miniboss.arrow_beam.VICTIM

# Summon temporary marker
execute as @e[tag=dragon_rework.miniboss] at @s anchored eyes facing entity @a[tag=dragon_rework.miniboss.arrow_beam.VICTIM.temp] eyes positioned 0.0 0 0.0 run summon marker ^ ^ ^3 {Tags:["dragon_rework.miniboss.arrow_beam.dir_tmp"]}

# Summon arrow
execute as @e[tag=dragon_rework.miniboss] at @s if entity @s[tag=!dragon_rework.minibossMAD] anchored eyes facing entity @a[tag=dragon_rework.miniboss.arrow_beam.VICTIM.temp] eyes run summon arrow ^ ^ ^ {pickup:0b,damage:3.0d,crit:0b,Tags:["dragon_rework.arrow","dragon_rework.miniboss.arrow_beam","dragon_rework.miniboss.arrow_beam.temp","dragon_rework.remove"],SoundEvent:"entity.arrow.hit",item:{id:"minecraft:arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:slowness",duration:600,amplifier:1}]}}},weapon:{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:power":4,"minecraft:punch":3,flame:1,infinity:1}},"minecraft:unbreakable":{show_in_tooltip:false}}}}
execute as @e[tag=dragon_rework.miniboss] at @s if entity @s[tag=dragon_rework.minibossMAD] anchored eyes facing entity @a[tag=dragon_rework.miniboss.arrow_beam.VICTIM.temp] eyes run summon arrow ^ ^ ^ {pickup:0b,damage:3.5d,crit:0b,Tags:["dragon_rework.arrow","dragon_rework.miniboss.arrow_beam","dragon_rework.miniboss.arrow_beam.temp","dragon_rework.remove"],SoundEvent:"entity.arrow.hit",item:{id:"minecraft:arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:slowness",duration:600,amplifier:1}]}}},weapon:{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:power":4,"minecraft:punch":3,flame:1,infinity:1}},"minecraft:unbreakable":{show_in_tooltip:false}}}}

# Play sound
execute as @e[tag=dragon_rework.miniboss] at @s run playsound minecraft:entity.arrow.shoot hostile @a[tag=dragon_rework.miniboss.arrow_beam.VICTIM.temp] ~ ~ ~

# Set Owner
data modify entity @e[tag=dragon_rework.miniboss.arrow_beam.temp,limit=1] Owner set from entity @e[tag=dragon_rework.miniboss,limit=1] UUID

# Move arrow to miniboss
execute as @e[tag=dragon_rework.miniboss] at @s anchored eyes facing entity @a[tag=dragon_rework.miniboss.arrow_beam.VICTIM.temp] eyes run tp @e[tag=dragon_rework.miniboss.arrow_beam.temp] ^ ^ ^1
execute as @e[tag=dragon_rework.miniboss.arrow_beam.temp] run data modify entity @s NoGravity set value true

# Set Motion
data modify entity @e[tag=dragon_rework.miniboss.arrow_beam.temp,limit=1] Motion set from entity @e[tag=dragon_rework.miniboss.arrow_beam.dir_tmp,limit=1] Pos
execute as @e[tag=dragon_rework.miniboss.arrow_beam.temp] run data modify entity @s NoGravity set value false

# Cleanup
tag @e[tag=dragon_rework.miniboss.arrow_beam.temp] remove dragon_rework.miniboss.arrow_beam.temp
tag @a[tag=dragon_rework.miniboss.arrow_beam.VICTIM.temp] remove dragon_rework.miniboss.arrow_beam.VICTIM.temp
kill @e[tag=dragon_rework.miniboss.arrow_beam.dir_tmp]

# Loop if players left
execute if entity @a[scores={rcube_dragonRework.temp=5}] run function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/spawn
