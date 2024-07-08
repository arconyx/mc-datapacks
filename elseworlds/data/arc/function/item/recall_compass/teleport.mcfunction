# Teleports player to target specified in storage arc:recall compass with values dimension x y z

# set interdimensional flag from item
# set value to false to handle when tag is missing entirely
data modify storage arc:recall_compass interdimensional set value false
data modify storage arc:recall_compass interdimensional set from entity @s SelectedItem.components."minecraft:custom_data".interdimensional

# Check dimension
execute unless data storage arc:recall_compass {interdimensional: true} unless function arc:item/recall_compass/check_dimension run return fail

# If mass flag present teleport entities within five blocks
execute if data entity @s SelectedItem.components.minecraft:custom_data.mass at @s as @e[type=!#arc:cannot_teleport,distance=..5] run function arc:teleport_to_coords_dim with storage arc:recall_compass
# else just teleport the player
execute unless data entity @s SelectedItem.components.minecraft:custom_data.mass run function arc:teleport_to_coords_dim with storage arc:recall_compass

# Remove compass
item modify entity @s weapon.mainhand arc:remove_one_item