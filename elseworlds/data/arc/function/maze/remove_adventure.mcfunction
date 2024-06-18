# Called on players with the mazerunner tag but not in the maze

# Switch back to survival and 
execute if entity @s[gamemode=adventure] run gamemode survival @s
# remove tag
tag @s remove mazerunner