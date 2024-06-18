# Check the compass has a target set, else fail
execute if items entity @s weapon.mainhand minecraft:compass[!minecraft:lodestone_tracker] run tellraw @s {"text":"No lodestone set","color":"red"}
execute if items entity @s weapon.mainhand minecraft:compass[!minecraft:lodestone_tracker] run return fail

# Save teleport target
# Use scoreboard instead for per player?
data modify storage arc:recall_compass dimension set from entity @s SelectedItem.components.minecraft:lodestone_tracker.target.dimension
execute store result storage arc:recall_compass x int 1 run data get entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[0]
execute store result storage arc:recall_compass y int 1 run data get entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[1]
execute store result storage arc:recall_compass z int 1 run data get entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[2]

function arc:item/recall_compass/teleport
