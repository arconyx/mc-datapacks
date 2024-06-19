# Wrapper for attuned portal seed teleportation

advancement revoke @s only arc:triggers/portal_seed_right_click

# check mainhand so the remove works ok
execute unless data entity @s SelectedItem.components.minecraft:custom_data.dimension run return fail

# Check player is in a different dimension than the target.
data modify storage arc:portal_seed dimension set from entity @s SelectedItem.components.minecraft:custom_data.dimension
# Returns false (0) when dimensions match
execute store success score @s teleportDimensionValid run data modify storage arc:portal_seed dimension set from entity @s Dimension
execute unless score @s teleportDimensionValid matches 1 run return fail

# tag entities for mass transit
execute if data entity @s SelectedItem.components.minecraft:custom_data.mass run tag @e[type=!#arc:cannot_teleport,distance=..5] add massTeleport

execute if predicate arc:item_dimension/overworld run function arc:portals/seeds/overworld_teleport
execute if predicate arc:item_dimension/nether run function arc:portals/seeds/nether_teleport
execute if predicate arc:item_dimension/end run function arc:portals/seeds/end_teleport

execute if predicate arc:item_dimension/purelake run function arc:portals/seeds/purelake_teleport
execute if predicate arc:item_dimension/maze run function arc:portals/seeds/maze_teleport
execute if predicate arc:item_dimension/spaghetti run function arc:portals/seeds/spaghetti_teleport

# teleport mass transit entities
execute if data entity @s SelectedItem.components.minecraft:custom_data.mass run teleport @e[tag=massTeleport] @s
effect give @e[tag=massTeleport] minecraft:resistance 6 5 true
tag @e[tag=massTeleport] remove massTeleport

function arc:portals/safe_landing

item modify entity @s weapon.mainhand arc:remove_one_item