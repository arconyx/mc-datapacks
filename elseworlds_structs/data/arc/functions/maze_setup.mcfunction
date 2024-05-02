# Generates maze

# This might take a minute so warn the player
tellraw @s {"text": "Generating...", "color": "gray"}
# Mark maze position in all dimensions
execute in minecraft:overworld run function arc:maze_mark
# Generate maze
place jigsaw arc:maze_start arc:atrium_base 13
# Confirm completition
tellraw @s {"text": "Labyrinth ready", "color": "gray"}