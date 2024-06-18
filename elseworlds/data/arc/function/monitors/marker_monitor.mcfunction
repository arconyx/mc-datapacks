# run as @e[type=marker]

execute if dimension arc:maze run function arc:maze/maze_marker_monitors
execute if dimension arc:hub run function arc:hub/hub_marker_monitors

execute if entity @s[tag=portal_tree] if entity @a[distance=..30] run function arc:portals/trees/tree_teleport
execute if entity @s[tag=portal_sapling] run function arc:portals/trees/spawn_tree
execute if entity @s[tag=buried_lab_tree] if entity @a[distance=..30] run function arc:portals/trees/buried_lab/teleport