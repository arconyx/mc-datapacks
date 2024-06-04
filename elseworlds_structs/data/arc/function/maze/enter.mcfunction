# Teleport player into nearby maze, generating it if necessary.
# Run as player

# Switch to adventure mode
# Tag player so we know adventure mode is because of the maze
execute if entity @s[gamemode=!creative] run tag @s add mazerunner
execute if entity @s[gamemode=!creative] run gamemode adventure @s
execute if dimension arc:hub run tag @s add fromHub

# If another player is in the maze go to them and terminate
execute in arc:maze if entity @a[x=0,y=0,z=0,tag=mazerunner] run return run function arc:maze/join_player

# If in hub move maze to random coordinates
execute if dimension arc:hub run function arc:randomise_coordinates {mag: 100000}
# Else use the player's current coordinates
execute unless dimension arc:hub store result storage arc:random_coord x int 1 run data get entity @s Pos[0]
execute unless dimension arc:hub store result storage arc:random_coord z int 1 run data get entity @s Pos[2]

# Generate maze and teleport player in
execute in arc:maze run function arc:maze/setup_random with storage arc:random_coord