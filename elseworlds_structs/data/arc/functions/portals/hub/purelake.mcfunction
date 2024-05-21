execute store result storage arc:purelake_tp_temp x double 1 run scoreboard players get @p purelakeCoordinateX
execute store result storage arc:purelake_tp_temp y double 1 run scoreboard players get @p purelakeCoordinateY
execute store result storage arc:purelake_tp_temp z double 1 run scoreboard players get @p purelakeCoordinateZ

execute as @s in arc:purelake run function arc:portals/hub/teleport_to_coords with storage arc:purelake_tp_temp
function arc:portals/safe_landing