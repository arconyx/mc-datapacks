# Check player is in the same dimension as last death
execute unless data entity @s LastDeathLocation run return fail

# Save teleport target
data modify storage arc:recall_compass dimension set from entity @s LastDeathLocation.dimension
execute store result storage arc:recall_compass x int 1 run data get entity @s LastDeathLocation.pos[0]
execute store result storage arc:recall_compass y int 1 run data get entity @s LastDeathLocation.pos[1]
execute store result storage arc:recall_compass z int 1 run data get entity @s LastDeathLocation.pos[2]

function arc:item/recall_compass/teleport


