tellraw @p {"text": "Growing sapling", "color": "gray"}

execute if entity @p[y_rotation=-45..45] run function arc:portals/trees/place_rotated/clockwise_90 {z: 0, x: 5}
execute if entity @p[y_rotation=-135..-45] run function arc:portals/trees/place_rotated/none {z: -5, x: 0}
execute if entity @p[y_rotation=45..135] run function arc:portals/trees/place_rotated/180 {z: 5, x: 0}
execute unless entity @p[y_rotation=-135..135] run function arc:portals/trees/place_rotated/counterclockwise_90 {z: 0, x: -5}

kill @s