say Teleport triggered

# Revoke advancement before doing anything else
# So it isn't left granted if we bug out
advancement revoke @s only arc:compass_right_click

# Check the compass has a target set, else fail
execute if items entity @s weapon.mainhand minecraft:compass[!minecraft:lodestone_tracker] run tellraw @s {"text":"No lodestone set","color":"red"}
execute if items entity @s weapon.mainhand minecraft:compass[!minecraft:lodestone_tracker] run return 0

# Check player is in the same dimension as lodestone
data modify storage arc:lodestone dimension set from entity @s SelectedItem.components.minecraft:lodestone_tracker.target.dimension
# Returns false (0) when dimensions match
execute store success score @s teleportDimensionValid run data modify storage arc:lodestone dimension set from entity @s Dimension
execute if score @s teleportDimensionValid matches 1 run tellraw @s {"text":"Unable to breach dimensional barrier","color":"red"}
execute if score @s teleportDimensionValid matches 1 run return 0

# Save teleport target
# Use scoreboard instead for per player?
# TODO: Dimension support. Might need hardcoding.
execute store result storage arc:lodestone x int 1 run data get entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[0]
execute store result storage arc:lodestone y int 1 run data get entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[1]
execute store result storage arc:lodestone z int 1 run data get entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[2]

tag @s add teleporting
summon minecraft:marker ~ ~ ~ {Tags: ["teleportTarget"]}
execute as @e[tag=teleportTarget,sort=nearest,limit=1] run function arc:lodestone_teleport_to_marker
tag @s remove teleporting

# Remove compass
item modify entity @s weapon.mainhand arc:remove_one_item


