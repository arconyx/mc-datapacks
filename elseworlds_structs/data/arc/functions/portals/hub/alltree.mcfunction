execute store result storage arc:alltree_tp_temp x double 1 run scoreboard players get @p alltreeCoordinateX
execute store result storage arc:alltree_tp_temp y double 1 run scoreboard players get @p alltreeCoordinateY
execute store result storage arc:alltree_tp_temp z double 1 run scoreboard players get @p alltreeCoordinateZ

execute as @s in arc:spaghetti run function arc:portals/hub/teleport_to_coords with storage arc:alltree_tp_temp
function arc:portals/safe_landing