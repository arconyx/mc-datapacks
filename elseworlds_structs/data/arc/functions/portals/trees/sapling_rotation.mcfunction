execute if entity @p[y_rotation=-45..45] run function arc:portals/trees/spawn_tree {rotation: "none"}

execute if entity @p[y_rotation=-135..-45] run function arc:portals/trees/spawn_tree {rotation: "counterclockwise_90"}

execute if entity @p[y_rotation=45..135] run function arc:portals/trees/spawn_tree {rotation: "clockwise_90"}

execute if entity @p[y_rotation=135..180] run function arc:portals/trees/spawn_tree {rotation: "180"}
execute if entity @p[y_rotation=-180..-135] run function arc:portals/trees/spawn_tree {rotation: "180"}