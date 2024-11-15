# Made by: @rcube.
# Weee!
#
# Called By: rcube:dragon_rework/attacks/miniboss/abilities/run, THIS
# Ran as: Entity, Player (1 or 2 nearest to miniboss)

# Prepare & run
scoreboard players set @a[tag=dragon_rework.miniboss.arrow_beam.VICTIM] rcube_dragonRework.temp 5
function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/spawn
execute as @e[tag=dragon_rework.miniboss.arrow_beam,nbt={inGround:true}] run kill @s

# Loop
scoreboard players remove $arrow_beam.loop rcube_dragonRework.store 1
execute if score $arrow_beam.loop rcube_dragonRework.store matches 1.. run schedule function rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/loop 2t append
