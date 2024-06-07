#say lore start

# revoke trigger
advancement revoke @s only arc:triggers/lore_shelf

# Check lore shelf isn't currently active
execute if data storage arc:lore_shelf active run return fail
# If not set the active flag
data modify storage arc:lore_shelf active set value 1

#say active flag set

function arc:hub/lore/process_lore

# Clear active flag
data remove storage arc:lore_shelf active