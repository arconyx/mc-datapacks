execute store result storage arc:overworld_tp_temp x double 1 run scoreboard players get @s overworldCoordinateX
execute store result storage arc:overworld_tp_temp y double 1 run scoreboard players get @s overworldCoordinateY
execute store result storage arc:overworld_tp_temp z double 1 run scoreboard players get @s overworldCoordinateZ

execute as @s in minecraft:overworld run function arc:portals/hub/teleport_to_coords with storage arc:overworld_tp_temp
function arc:portals/safe_landing