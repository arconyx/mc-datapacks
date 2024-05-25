# Teleport player into nearby maze, generating it if necessary.
# Run as player

# Switch to adventure mode
# Tag player so we know adventure mode is because of the maze
execute if entity @s[gamemode=!creative] run tag @s add mazerunner
execute if entity @s[gamemode=!creative] run gamemode adventure @s
execute if dimension arc:hub run tag @s add fromHub

# If another player is in the maze go to them and terminate
execute in arc:maze if entity @a[x=0,y=0,z=0,tag=mazerunner] run return run function arc:maze/join_player

# Setup maze at random coordinates and teleport player in
function arc:randomise_coordinates
execute in arc:maze run function arc:maze/setup_random with storage arc:random_coord