# Made by: @rcube.
# Rapid-fire fireball
#
# Called By: rcube:dragon_rework/attacks/mad/rapid_fireball
# Ran as: Entity, Ender Dragon (scores={rcube_dragonRework.phase=8})

execute facing entity @a[tag=dragon_rework.fireball.VICTIM_1,limit=1,predicate=rcube:dragon_rework/end_centre,gamemode=!spectator] eyes positioned ^ ^ ^17 run function rcube:dragon_rework/sch/fireball/rapid/0
schedule function rcube:dragon_rework/sch/fireball/rapid/delay/victim_1/do_1 10t
schedule function rcube:dragon_rework/sch/fireball/rapid/delay/victim_1/do_2 20t
schedule function rcube:dragon_rework/sch/fireball/rapid/delay/victim_1/do_3 30t
schedule function rcube:dragon_rework/sch/fireball/rapid/delay/victim_1/do_4 40t

execute facing entity @a[tag=dragon_rework.fireball.VICTIM_2,limit=1,predicate=rcube:dragon_rework/end_centre,gamemode=!spectator] eyes positioned ^ ^ ^17 run function rcube:dragon_rework/sch/fireball/rapid/0
schedule function rcube:dragon_rework/sch/fireball/rapid/delay/victim_2/do_1 10t
schedule function rcube:dragon_rework/sch/fireball/rapid/delay/victim_2/do_2 20t
schedule function rcube:dragon_rework/sch/fireball/rapid/delay/victim_2/do_3 30t
schedule function rcube:dragon_rework/sch/fireball/rapid/delay/victim_2/do_4 40t

execute facing entity @a[tag=dragon_rework.fireball.VICTIM_3,limit=1,predicate=rcube:dragon_rework/end_centre,gamemode=!spectator] eyes positioned ^ ^ ^17 run function rcube:dragon_rework/sch/fireball/rapid/0
schedule function rcube:dragon_rework/sch/fireball/rapid/delay/victim_3/do_1 10t
schedule function rcube:dragon_rework/sch/fireball/rapid/delay/victim_3/do_2 20t
schedule function rcube:dragon_rework/sch/fireball/rapid/delay/victim_3/do_3 30t
schedule function rcube:dragon_rework/sch/fireball/rapid/delay/victim_3/do_4 40t