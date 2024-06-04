# Check player is in the same dimension as last death
data modify storage arc:recall_compass dimension set from entity @s LastDeathLocation.dimension
# Returns false (0) when dimensions match
execute store success score @s teleportDimensionValid run data modify storage arc:recall_compass dimension set from entity @s Dimension
execute if score @s teleportDimensionValid matches 1 run title @s actionbar {"text":"Unable to breach dimensional barrier","color":"red"}
execute if score @s teleportDimensionValid matches 1 run return 0

# Save teleport target
# Use scoreboard instead for per player?
execute store result storage arc:recall_compass x int 1 run data get entity @s LastDeathLocation.pos[0]
execute store result storage arc:recall_compass y int 1 run data get entity @s LastDeathLocation.pos[1]
execute store result storage arc:recall_compass z int 1 run data get entity @s LastDeathLocation.pos[2]

function arc:item/recall_compass/teleport

# Remove compass
item modify entity @s weapon.mainhand arc:remove_one_item


