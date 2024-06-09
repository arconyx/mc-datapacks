say searching for structure

# Init some stuff
$execute store result score @s locationSearch2 run locate structure $(target)
execute store result score @s locationSearchX run data get entity @s Pos[0]
execute store result score @s locationSearchZ run data get entity @s Pos[2]
execute store result storage arc:location_search step int 1 run scoreboard players get @s locationSearch2
execute store result storage arc:location_search y int 1 run data get entity @s Pos[1]

# Inits X and Z
function arc:find_struct/update_coordinates with storage arc:location_search

# Start locating
function arc:find_struct/locate with storage arc:location_search

say done

# function arc:teleport_to_coords with storage arc:location_search