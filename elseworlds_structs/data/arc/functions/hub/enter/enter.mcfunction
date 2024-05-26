execute if dimension minecraft:overworld run function arc:hub/enter/overworld
execute if dimension arc:spaghetti run function arc:hub/enter/alltree
execute if dimension arc:purelake run function arc:hub/enter/purelake

execute if data storage arc:hub_core x in arc:hub run return run function arc:teleport_to_coords with storage arc:hub_core

# tellraw @s {"text": "Coordinates not found", "color": "red"}
execute in arc:hub unless data storage arc:hub_core init run function arc:hub/enter/place_tower