# execute if data storage arc:hub_core init run return fail

# This might take a minute so warn the player
execute in arc:hub run forceload add ~ ~
tellraw @s {"text": "Generating...", "color": "gray"}

execute in arc:hub run place jigsaw arc:surreal_tower_start arc:tower_base 2 ~ ~ ~

schedule function arc:hub/enter/find_hub 10t replace

data modify storage arc:hub_core init set value 1

# Confirm completition
tellraw @s {"text": "Hub ready", "color": "gray"}
