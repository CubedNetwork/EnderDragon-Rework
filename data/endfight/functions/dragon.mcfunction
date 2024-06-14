#Okay, dragon has been ticked off. time to do a really epic

#Timer and attack handling
execute if entity @s[tag=music] run scoreboard players remove @s dragonAttackTimer 1
#say haha
execute if entity @s[tag=music] if entity @s[scores={dragonAttackTimer=0}] run function endfight:attacks/do
execute if entity @s[tag=music] unless entity @s[tag=MAD] if entity @s[scores={dragonAttackTimer=0}] run scoreboard players set @s dragonAttackTimer 400
execute if entity @s[tag=music] if entity @s[tag=MAD] if entity @s[scores={dragonAttackTimer=0}] run scoreboard players set @s dragonAttackTimer 200

#Health handling
execute if entity @s[scores={dragonHealth=..499}] as @a[distance=..500,tag=!playerMusic,tag=!playerMusicMAD] run tag @s add playerMusic.loop
execute if entity @s[scores={dragonHealth=..499}] as @a[distance=..500,tag=!playerMusic,tag=!playerMusicMAD] run function endfight:sch/music/phase1
execute if entity @s[scores={dragonHealth=..499}] unless entity @s[tag=music] run tag @s add music
execute if entity @s[tag=music] run stopsound @a[distance=..500] music
# If player dies (replace with predicate eventually - no support for custom dimension or if you leave the island during battle)
execute in minecraft:overworld as @a[distance=0..] run tag @s remove playerMusic.loop
execute in minecraft:the_nether as @a[distance=0..] run tag @s remove playerMusic.loop
execute in minecraft:overworld as @a[distance=0..] run tag @s remove music
execute in minecraft:the_nether as @a[distance=0..] run tag @s remove music
execute in minecraft:overworld as @a[distance=0..] run stopsound @a record endfight:boss/phase1
execute in minecraft:the_nether as @a[distance=0..] run stopsound @a record endfight:boss/phase1


#Handle becoming MAD
execute if entity @s[scores={dragonHealth=0..250}] as @a[distance=..500,tag=!playerMusicMAD] run stopsound @a record endfight:boss/phase1
execute if entity @s[scores={dragonHealth=0..250}] as @a[distance=..500,tag=!playerMusicMAD] run schedule clear endfight:sch/music/phase1
execute if entity @s[scores={dragonHealth=0..250}] as @a[distance=..500,tag=!playerMusicMAD] run tag @s add playerMusicMAD.loop
execute if entity @s[scores={dragonHealth=0..250}] as @a[distance=..500,tag=!playerMusicMAD] run function endfight:sch/music/phase2
execute if entity @s[scores={dragonHealth=0..250}] as @a[distance=..500,tag=!playerMusicMAD,tag=playerMusicMAD.loop] run tag @s add playerMusicMAD
# If player dies (see comment two above this)
execute in minecraft:overworld as @a[distance=0..] run tag @s remove musicMAD.loop
execute in minecraft:the_nether as @a[distance=0..] run tag @s remove musicMAD.loop
execute in minecraft:overworld as @a[distance=0..] run tag @s remove musicMAD
execute in minecraft:the_nether as @a[distance=0..] run tag @s remove musicMAD
execute in minecraft:overworld as @a[distance=0..] run stopsound @a record endfight:boss/phase2
execute in minecraft:the_nether as @a[distance=0..] run stopsound @a record endfight:boss/phase2
# Non-music
execute if entity @s[scores={dragonHealth=0..250},tag=!MAD] run execute in minecraft:the_end as @e[tag=crystal,limit=3] at @s run summon minecraft:end_crystal ~ ~ ~ {Tags:["crystalInit"]}
execute if entity @s[scores={dragonHealth=0..250},tag=!MAD] run tag @s add MAD
execute if entity @s[tag=MAD] at @s run particle portal ~ ~ ~ 3 3 3 1 50 force

#Remove beds
#fill ~8 ~8 ~8 ~-8 ~-8 ~-8 air replace #minecraft:beds

#miniboss check
execute if entity @e[tag=miniboss] run tp 0 100 0