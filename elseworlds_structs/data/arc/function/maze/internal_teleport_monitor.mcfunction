# Calls function that generates particles and teleports players
# No point running this on markers beyond a certain distance.
execute in arc:maze as @e[type=minecraft:marker,tag=maze_internal_tp_marker] at @s if entity @a[distance=..30] run function arc:maze/internal_teleport