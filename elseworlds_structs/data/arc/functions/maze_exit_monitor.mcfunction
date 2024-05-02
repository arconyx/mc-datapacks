# Calls function that generates particles and teleports players
# No point running this on markers beyond a certain distance.
execute in arc:maze as @e[tag=maze_tree] at @s if entity @a[distance=..30] run function arc:maze_exit