# Made by: @rcube.
# Warning screen
#
# Called By:
#   rcube:dragon_rework/attacks/mad/lightning_start
# Ran as: Player (predicate, end_centre = true)

playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1
title @s times 5t 1s 10t
title @s title ""
title @s subtitle {"text":">> Watch out! <<","color":"red"}
