# Teleport player into another player's maze
# Run as the teleporting player at the mazerunning player's position

# Teleport to the entrance marker nearest the mazerunning player
execute store success score @s mazeJoinSuccess at @a[x=0,y=0,z=0,tag=mazerunner] run teleport @s @e[tag=maze_entrance,sort=nearest,limit=1]
# If we can't find any entrance markers (i.e. entrance unloaded) teleport straight to the other player
execute unless score @s mazeJoinSuccess matches 1 run teleport @s ~ ~ ~
