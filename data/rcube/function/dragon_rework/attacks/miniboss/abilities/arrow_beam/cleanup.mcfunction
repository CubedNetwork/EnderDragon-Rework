# Made by: @rcube.
# Remove arrow
#
# Called By: rcube:dragon_rework/attacks/miniboss/abilities/arrow_beam/run

# Kill arrow + clear tag
kill @e[tag=dragon_rework.miniboss.arrow_beam]
tag @a[tag=dragon_rework.miniboss.arrow_beam.VICTIM] remove dragon_rework.miniboss.arrow_beam.VICTIM
