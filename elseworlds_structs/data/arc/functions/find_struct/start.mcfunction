say searching for structure

# Init some stuff
execute store result score @s locationSearch2 run locate structure #village
execute store result score @s locationSearchX run data get entity @s Pos[0]
execute store result score @s locationSearchZ run data get entity @s Pos[2]
execute store result storage arc:location_search step int 1 run scoreboard players get @s locationSearch2

# Inits X and Z
function arc:find_struct/update_coordinates with storage arc:location_search

# Start locating
function arc:find_struct/locate with storage arc:location_search

say done