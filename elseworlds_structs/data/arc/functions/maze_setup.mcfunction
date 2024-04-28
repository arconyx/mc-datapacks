# Setups maze and teleports player into it

# This might take a minute so warn the player
tellraw @s {"text": "Generating...", "color": "gray"}

# Generate maze
execute in arc:maze run forceload add ~ ~ ~16 ~16
execute in arc:maze run place jigsaw arc:maze arc:maze 13
execute in arc:maze run forceload remove ~ ~
execute in arc:maze run teleport @s ~ ~ ~

# Switch to adventure mode
# Tag player so we know adventure mode is because of the maze
tag @s add mazerunner
gamemode adventure @s

tellraw @s {"text": "Labyrinth ready", "color": "gray"}