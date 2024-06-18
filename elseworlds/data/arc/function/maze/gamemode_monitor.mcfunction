# Find players who were in the maze but have left and run appropriate cleanup functions
# Called on all players not in the maze

execute if entity @s[tag=mazerunner] run function arc:maze/remove_adventure
execute if entity @s[tag=fromHub] run tag @s remove fromHub