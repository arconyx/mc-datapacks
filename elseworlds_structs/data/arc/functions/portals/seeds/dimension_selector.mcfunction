say Checking portal dimension

advancement revoke @s only arc:portal_seed_right_click

# Check player is in a different dimension than the target.
data modify storage arc:portal_seed dimension set from entity @s SelectedItem.components.minecraft:custom_data.dimension
# Returns false (0) when dimensions match
execute store success score @s teleportDimensionValid run data modify storage arc:portal_seed dimension set from entity @s Dimension
execute unless score @s teleportDimensionValid matches 1 run return 0

execute if predicate arc:item_dimension/overworld run function arc:portals/seeds/overworld_teleport
execute if predicate arc:item_dimension/nether run function arc:portals/seeds/nether_teleport
execute if predicate arc:item_dimension/end run function arc:portals/seeds/end_teleport

execute if predicate arc:item_dimension/purelake run function arc:portals/seeds/purelake_teleport
execute if predicate arc:item_dimension/maze run function arc:portal/seeds/maze_teleport
execute if predicate arc:item_dimension/spaghetti run function arc:portals/seeds/spaghetti_teleport

item modify entity @s weapon.mainhand arc:remove_one_item