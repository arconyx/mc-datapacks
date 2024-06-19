scoreboard players set @s mazeEntranceDimension 0
execute store result score @s mazeOverworldCoordinateX run data get entity @s Pos[0] 1
execute store result score @s mazeOverworldCoordinateY run data get entity @s Pos[1] 1
execute store result score @s mazeOverworldCoordinateZ run data get entity @s Pos[2] 1