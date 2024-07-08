# Check player is in the same dimension as target
# Returns false (0) when dimensions match
execute store success score @s teleportDimensionValid run data modify storage arc:recall_compass dimension set from entity @s Dimension
execute if score @s teleportDimensionValid matches 1 run title @s actionbar {"text":"Unable to breach dimensional barrier","color":"red"}
execute if score @s teleportDimensionValid matches 1 run return fail
return 1