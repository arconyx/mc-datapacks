# The target of the interaction entity is the last player to right click it
# We execute on target so we are executing as the player that last right clicked it
# Iff this is the tagged player then we proceed
# Else we return a failure
execute on target unless entity @s[tag=customer] run return fail

# Process the interaction
function arc:hub/shop/process_interaction

# Clear the interaction from the entity's data
data remove entity @s interaction

# clear tag
# we're actually doing this on the outer layer too, but this provides security against duplicates
tag @s remove customer