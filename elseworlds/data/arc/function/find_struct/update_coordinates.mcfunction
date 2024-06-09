# Update search coordinates by adding a random offset of magnitude step in each direction

# Generate a random offset
$execute store result score @s locationSearchOffsetX run random value -$(step)..$(step)
$execute store result score @s locationSearchOffsetZ run random value -$(step)..$(step)

# Apply offset to coordinates
scoreboard players operation @s locationSearchX += @s locationSearchOffsetX
scoreboard players operation @s locationSearchZ += @s locationSearchOffsetZ

# Store coordinates for macro
execute store result storage arc:location_search x int 1 run scoreboard players get @s locationSearchX
execute store result storage arc:location_search z int 1 run scoreboard players get @s locationSearchZ