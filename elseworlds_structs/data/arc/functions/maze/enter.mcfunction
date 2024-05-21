# Teleport player into nearby maze, generating it if necessary.
# Run as player

# Switch to adventure mode
# Tag player so we know adventure mode is because of the maze
execute if entity @s[gamemode=!creative] run tag @s add mazerunner
execute if entity @s[gamemode=!creative] run gamemode adventure @s
execute if dimension arc:hub run tag @s add fromHub

# Load area
execute in arc:maze run forceload add ~ ~

# If no players are in the maze generate it
# x,y,z are to restrict dimension. We probably don't need it with mazerunner tag but it pays to be safe.
execute in arc:maze unless entity @a[x=0,y=0,z=0,tag=mazerunner] run function arc:maze/setup

# Select marker and teleport players to it.
# Order is important here. Don't rearrange these or we'll teleport the player in then trigger the second teleport
execute in arc:maze at @r[x=0,y=0,z=0,tag=mazerunner] run function arc:maze/join_player
execute in arc:maze unless entity @a[x=0,y=0,z=0,tag=mazerunner] run teleport @s @e[tag=maze_entrance,sort=nearest,limit=1]

# Cleanup forceload
execute in arc:maze run forceload remove ~ ~
