execute store result storage arc:lake_tp_temp x double 1 run scoreboard players get @s lakeCoordinateX
execute store result storage arc:lake_tp_temp y double 1 run scoreboard players get @s lakeCoordinateY
execute store result storage arc:lake_tp_temp z double 1 run scoreboard players get @s lakeCoordinateZ

execute as @s in arc:lake run function arc:teleport_to_coords with storage arc:lake_tp_tempncfunction arc:portals/safe_landing