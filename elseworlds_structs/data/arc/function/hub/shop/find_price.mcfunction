# i shouldn't need this but without it all interaction entities trigger
execute unless data entity @s attack run return fail
# The target of the interaction entity is the last player to right click it
# We execute on target so we are executing as the player that last right clicked it
# Iff this is the tagged player then we proceed
# Else we return a failure
execute on attacker unless entity @s[tag=customer2] run return fail

# Process the interaction
execute on passengers if data entity @s item.components."minecraft:item_name" run data modify entity @s item.components."minecraft:custom_data".store.name set string entity @s item.components."minecraft:item_name"
function arc:hub/shop/show_price with entity @s Passengers[0].item.components."minecraft:custom_data".store

# clear tag
# we're actually doing this on the outer layer too, but this provides security against duplicates
execute on attacker run tag @s remove customer2

# Clear the interaction from the entity's data
data remove entity @s attack