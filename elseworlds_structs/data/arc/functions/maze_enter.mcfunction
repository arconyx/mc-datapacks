# Teleport player into nearby maze, generating it if necessary.
# Run as player

# Load area
execute in arc:maze run forceload add ~-64 ~-64 ~64 ~64
# Look for marker, else generate maze
execute in arc:maze unless entity @e[tag=maze_entrance,distance=..128] run function arc:maze_setup
# Select marker and teleport players to it. It's a little ineffcient to run the selector again, but we won't call this often.
execute in arc:maze run teleport @s @e[tag=maze_entrance,distance=..128,sort=nearest,limit=1]
# Cleanup forceload
execute in arc:maze run forceload remove ~-64 ~-64 ~64 ~64
# Switch to adventure mode
# Tag player so we know adventure mode is because of the maze
tag @s add mazerunner
gamemode adventure @s
