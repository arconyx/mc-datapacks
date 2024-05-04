# Check the compass has a target set, else fail
execute if items entity @s weapon.mainhand minecraft:compass[!minecraft:lodestone_tracker] run tellraw @s {"text":"No lodestone set","color":"red"}
execute if items entity @s weapon.mainhand minecraft:compass[!minecraft:lodestone_tracker] run return 0

# Check player is in the same dimension as lodestone
data modify storage arc:recall_compass dimension set from entity @s SelectedItem.components.minecraft:lodestone_tracker.target.dimension
# Returns false (0) when dimensions match
execute store success score @s teleportDimensionValid run data modify storage arc:recall_compass dimension set from entity @s Dimension
execute if score @s teleportDimensionValid matches 1 run title @s actionbar {"text":"Unable to breach dimensional barrier","color":"red"}
execute if score @s teleportDimensionValid matches 1 run return 0

# Save teleport target
# Use scoreboard instead for per player?
execute store result storage arc:recall_compass x int 1 run data get entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[0]
execute store result storage arc:recall_compass y int 1 run data get entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[1]
execute store result storage arc:recall_compass z int 1 run data get entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[2]

function arc:recall_compass/teleport

# Remove compass
item modify entity @s weapon.mainhand arc:remove_one_item


