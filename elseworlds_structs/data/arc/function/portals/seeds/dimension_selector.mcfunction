# Wrapper for attuned portal seed teleportation

advancement revoke @s only arc:triggers/portal_seed_right_click

# check mainhand so the remove works ok
execute unless data entity @s SelectedItem.components.minecraft:custom_data.dimension run return fail

# Check player is in a different dimension than the target.
data modify storage arc:portal_seed dimension set from entity @s SelectedItem.components.minecraft:custom_data.dimension
# Returns false (0) when dimensions match
execute store success score @s teleportDimensionValid run data modify storage arc:portal_seed dimension set from entity @s Dimension
execute unless score @s teleportDimensionValid matches 1 run return fail

execute if predicate arc:item_dimension/overworld run function arc:portals/seeds/overworld_teleport
execute if predicate arc:item_dimension/nether run function arc:portals/seeds/nether_teleport
execute if predicate arc:item_dimension/end run function arc:portals/seeds/end_teleport

execute if predicate arc:item_dimension/lake run function arc:portals/seeds/lake_teleportecexecute if predicate arc:item_dimension/maze run function arc:portals/seeds/maze_teleportecexecute if predicate arc:item_dimension/spaghetti run function arc:portals/seeds/spaghetti_teleporteffeeffect give @s minecraft:resistance 6 5 truencfunction arc:portals/safe_landingitemitem modify entity @s weapon.mainhand arc:remove_one_item