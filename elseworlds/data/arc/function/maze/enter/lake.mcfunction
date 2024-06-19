scoreboard players set @s mazeEntranceDimension 2
execute store result score @s mazeLakeCoordinateX run data get entity @s Pos[0] 1
execute store result score @s mazeLakeCoordinateY run data get entity @s Pos[1] 1
execute store result score @s mazeLakeCoordinateZ run data get entity @s Pos[2] 1