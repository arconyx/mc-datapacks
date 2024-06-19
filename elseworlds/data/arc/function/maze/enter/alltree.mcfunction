scoreboard players set @s mazeEntranceDimension 1
execute store result score @s mazeAlltreeCoordinateX run data get entity @s Pos[0] 1
execute store result score @s mazeAlltreeCoordinateY run data get entity @s Pos[1] 1
execute store result score @s mazeAlltreeCoordinateZ run data get entity @s Pos[2] 1