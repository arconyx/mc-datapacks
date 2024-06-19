data modify storage arc:maze_exit dimension set value 'arc:purelake'
execute store result storage arc:maze_exit x double 1 run scoreboard players get @s mazeLakeCoordinateX
execute store result storage arc:maze_exit y double 1 run scoreboard players get @s mazeLakeCoordinateY
execute store result storage arc:maze_exit z double 1 run scoreboard players get @s mazeLakeCoordinateZ