data modify storage arc:maze_exit dimension set value 'minecraft:overworld'
execute store result storage arc:maze_exit x double 1 run scoreboard players get @s mazeOverworldCoordinateX
execute store result storage arc:maze_exit y double 1 run scoreboard players get @s mazeOverworldCoordinateY
execute store result storage arc:maze_exit z double 1 run scoreboard players get @s mazeOverworldCoordinateZ