# Generates maze

# This might take a minute so warn the player
tellraw @s {"text": "Generating...", "color": "gray"}
# Generate maze
place jigsaw arc:maze_start arc:atrium_base 7
# Cleanup stray items from prior iterations
execute in arc:maze run kill @e[x=0,y=0,z=0,type=minecraft:item]
# Confirm completition
tellraw @s {"text": "Labyrinth ready", "color": "gray"}