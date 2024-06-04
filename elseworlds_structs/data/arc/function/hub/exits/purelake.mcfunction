execute store result storage arc:purelake_tp_temp x double 1 run scoreboard players get @s purelakeCoordinateX
execute store result storage arc:purelake_tp_temp y double 1 run scoreboard players get @s purelakeCoordinateY
execute store result storage arc:purelake_tp_temp z double 1 run scoreboard players get @s purelakeCoordinateZ

execute as @s in arc:purelake run function arc:teleport_to_coords with storage arc:purelake_tp_temp
function arc:portals/safe_landing