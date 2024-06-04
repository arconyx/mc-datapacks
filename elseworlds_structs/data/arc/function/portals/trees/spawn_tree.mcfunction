tellraw @p {"text": "Growing sapling", "color": "gray"}
execute unless data entity @s data.sapling run tellraw @p {"text": "No sapling data found", "color": "red"}

execute if entity @p[y_rotation=-45..45] run function arc:portals/trees/place_rotated/clockwise_90 with entity @s data.sapling
execute if entity @p[y_rotation=-135..-45] run function arc:portals/trees/place_rotated/none with entity @s data.sapling
execute if entity @p[y_rotation=45..135] run function arc:portals/trees/place_rotated/180 with entity @s data.sapling
execute unless entity @p[y_rotation=-135..135] run function arc:portals/trees/place_rotated/counterclockwise_90 with entity @s data.sapling

kill @s