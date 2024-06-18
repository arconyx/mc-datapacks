# Teleports player to target specified in storage arc:recall compass with values dimension x y z

# Check player is in the same dimension as target
# Returns false (0) when dimensions match
execute store success score @s teleportDimensionValid run data modify storage arc:recall_compass dimension set from entity @s Dimension
execute if score @s teleportDimensionValid matches 1 run title @s actionbar {"text":"Unable to breach dimensional barrier","color":"red"}
execute if score @s teleportDimensionValid matches 1 run return fail

# If mass flag present teleport entities within five blocks
execute if data entity @s SelectedItem.components.minecraft:custom_data.mass at @s as @e[type=!#arc:cannot_teleport,distance=..5] run function arc:teleport_to_coords with storage arc:recall_compass
# else just teleport the player
execute unless data entity @s SelectedItem.components.minecraft:custom_data.mass run function arc:teleport_to_coords with storage arc:recall_compass

# Remove compass
item modify entity @s weapon.mainhand arc:remove_one_item