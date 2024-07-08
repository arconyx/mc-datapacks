execute if entity @p[y_rotation=-45..45] run return run function arc:portals/trees/place_rotated/clockwise_90 with entity @s data.sapling
execute if entity @p[y_rotation=-135..-45] run return run function arc:portals/trees/place_rotated/none with entity @s data.sapling
execute if entity @p[y_rotation=45..135] run return run function arc:portals/trees/place_rotated/180 with entity @s data.sapling
execute unless entity @p[y_rotation=-135..135] run return run function arc:portals/trees/place_rotated/counterclockwise_90 with entity @s data.sapling