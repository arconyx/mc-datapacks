tellraw @p {"text": "Growing sapling", "color": "gray"}

execute if entity @p[y_rotation=-45..45] run function arc:portals/trees/place_rotated/clockwise_90 {tree: "arc:tree/azalea_mangrove", left: 5, forwards: 0}
execute if entity @p[y_rotation=-135..-45] run function arc:portals/trees/place_rotated/none {tree: "arc:tree/azalea_mangrove", left: 5, forwards: 0}
execute if entity @p[y_rotation=45..135] run function arc:portals/trees/place_rotated/180 {tree: "arc:tree/azalea_mangrove", left: 5, forwards: 0}
execute unless entity @p[y_rotation=-135..135] run function arc:portals/trees/place_rotated/counterclockwise_90 {tree: "arc:tree/azalea_mangrove", left: 5, forwards: 0}

kill @s