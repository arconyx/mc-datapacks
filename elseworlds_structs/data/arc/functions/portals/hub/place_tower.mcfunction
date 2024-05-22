# execute if data storage arc:hub_core init run return fail

# This might take a minute so warn the player
tellraw @s {"text": "Generating...", "color": "gray"}

execute in arc:hub run forceload add ~-16 ~-16 ~16 ~16
execute in arc:hub run place jigsaw arc:surreal_tower_start arc:tower_base 2 ~ ~ ~

execute in arc:hub as @e[type=minecraft:marker] run say hub hi
execute in arc:hub as @e[type=minecraft:marker] run tag @s list
execute in arc:hub as @e[type=minecraft:marker,tag=tower_centre,sort=nearest,limit=1] run function arc:portals/hub/save_hub_centre
execute in arc:hub run forceload remove ~-16 ~-16 ~16 ~16

# Confirm completition
tellraw @s {"text": "Hub ready", "color": "gray"}

data get storage arc:hub_core

