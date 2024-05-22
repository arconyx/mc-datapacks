# execute if data storage arc:hub_core init run return fail

# This might take a minute so warn the player
execute in arc:hub run forceload add ~ ~
tellraw @s {"text": "Generating...", "color": "gray"}

execute in arc:hub run place jigsaw arc:surreal_tower_start arc:tower_base 2 ~ ~ ~

execute in arc:hub as @e[type=minecraft:marker,tag=tower_centre] run say hi
execute in arc:hub as @e[type=minecraft:marker,tag=tower_centre,sort=nearest,limit=1] run function arc:portals/hub/save_hub_centre

# Confirm completition
tellraw @s {"text": "Hub ready", "color": "gray"}
execute in arc:hub run forceload remove ~ ~