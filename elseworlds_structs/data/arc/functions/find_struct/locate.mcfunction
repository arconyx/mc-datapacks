# TODO: Check iteration depth for safety

$say calling locate with current step $(step)

# Find distance to structure
$execute positioned $(x) ~ $(z) store result score @s locationSearch1 run locate structure $(target)

# If distance is below threshold terminate
execute if score @s locationSearch1 matches 0..10 run return run say location search done

# If distance is further than last check undo coordinate changes
execute unless score @s locationSearch1 < @s locationSearch2 run function arc:find_struct/if_further
# Else update the other distance variable and step
execute if score @s locationSearch1 < @s locationSearch2 run function arc:find_struct/if_closer

# Find a new random point based on step
function arc:find_struct/update_coordinates with storage arc:location_search

# Call function again
function arc:find_struct/locate with storage arc:location_search