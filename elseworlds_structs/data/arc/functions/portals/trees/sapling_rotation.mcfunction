execute if entity @p[y_rotation=-45..45] run return run function arc:portals/trees/spawn_tree {rotation: "clockwise_90", z: 0, x: 5}

execute if entity @p[y_rotation=-135..-45] run return run function arc:portals/trees/spawn_tree {rotation: "none", z: -5, x: 0}

execute if entity @p[y_rotation=45..135] run return run function arc:portals/trees/spawn_tree {rotation: "180", z: 5, x: 0}

execute if entity @p[y_rotation=135..180] run return run function arc:portals/trees/spawn_tree {rotation: "counterclockwise_90", z: 0, x: -5}
execute if entity @p[y_rotation=-180..-135] run return run function arc:portals/trees/spawn_tree {rotation: "counterclockwise_90", z: 0, x: -5}