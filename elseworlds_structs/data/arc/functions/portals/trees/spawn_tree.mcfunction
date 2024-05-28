tellraw @p {"text": "Growing sapling", "color": "gray"}

execute if entity @p[y_rotation=-45..45] run function arc:portals/trees/place_rotated/clockwise_90 {x: 5, z: 0}
execute if entity @p[y_rotation=-135..-45] run function arc:portals/trees/place_rotated/none {x: 0, z: -5}
execute if entity @p[y_rotation=45..135] run function arc:portals/trees/place_rotated/180 {x: 0, z: 5}
execute unless entity @p[y_rotation=-135..135] run function arc:portals/trees/place_rotated/counterclockwise_90 {x: -5, z: 0}

kill @s