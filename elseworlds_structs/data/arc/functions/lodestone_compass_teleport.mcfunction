# Save teleport target
# Use scoreboard instead for per player?
say Teleport function called

# TODO: Dimension support. Might need hardcoding.
execute store result storage arc:lodestone x int 1 run data get entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[0]
execute store result storage arc:lodestone y int 1 run data get entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[1]
execute store result storage arc:lodestone z int 1 run data get entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[2]

tag @s add teleporting
summon minecraft:marker ~ ~ ~ {Tags: ["teleportTarget"]}
execute as @e[tag=teleportTarget,sort=nearest,limit=1] run function arc:lodestone_teleport_to_marker
tag @s remove teleporting