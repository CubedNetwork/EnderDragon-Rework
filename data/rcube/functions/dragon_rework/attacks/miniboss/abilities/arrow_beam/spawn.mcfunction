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
execute as @e[tag=dragon_rework.miniboss] at @s if entity @s[tag=!dragon_rework.minibossMAD] run summon arrow 0.0 0 0.0 {pickup:0b,damage:3.0d,crit:0b,Tags:["dragon_rework.arrow","dragon_rework.miniboss.arrow_beam","dragon_rework.miniboss.arrow_beam.temp","dragon_rework.remove"],SoundEvent:"entity.arrow.hit",CustomPotionEffects:[{Id:2,Amplifier:0b,Duration:600,ShowParticles:1b}]}
execute as @e[tag=dragon_rework.miniboss] at @s if entity @s[tag=dragon_rework.minibossMAD] run summon arrow 0.0 0 0.0 {pickup:0b,damage:3.5d,crit:0b,Tags:["dragon_rework.arrow","dragon_rework.miniboss.arrow_beam","dragon_rework.miniboss.arrow_beam.temp","dragon_rework.remove"],SoundEvent:"entity.arrow.hit",CustomPotionEffects:[{Id:2,Amplifier:0b,Duration:600,ShowParticles:1b}]}

# Play sound
execute as @e[tag=dragon_rework.miniboss] at @s run playsound minecraft:entity.arrow.shoot hostile @a[tag=dragon_rework.miniboss.arrow_beam.VICTIM.temp] ~ ~ ~

# Data
data modify entity @e[tag=dragon_rework.miniboss.arrow_beam.temp,limit=1] Motion set from entity @e[tag=dragon_rework.miniboss.arrow_beam.dir_tmp,limit=1] Pos
data modify entity @e[tag=dragon_rework.miniboss.arrow_beam.temp,limit=1] Owner set from entity @e[tag=dragon_rework.miniboss,limit=1] UUID

# Move arrow to miniboss
execute as @e[tag=dragon_rework.miniboss] at @s anchored eyes facing entity @a[tag=dragon_rework.miniboss.arrow_beam.VICTIM.temp] eyes run tp @e[tag=dragon_rework.miniboss.arrow_beam.temp] ^ ^ ^1

# Cleanup
tag @e[tag=dragon_rework.miniboss.arrow_beam.temp] remove dragon_rework.miniboss.arrow_beam.temp
tag @a[tag=dragon_rework.miniboss.arrow_beam.VICTIM.temp] remove dragon_rework.miniboss.arrow_beam.VICTIM.temp
kill @e[tag=dragon_rework.miniboss.arrow_beam.dir_tmp]

# Loop if players left
execute if entity @a[scores={rcube_dragonRework.temp=5}] run function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/spawn
