execute if data storage arc:hub_core x in arc:hub run return run function arc:portals/hub/teleport_to_coords with storage arc:hub_core

tellraw @s {"text": "Coordinates not found", "color": "red"}
execute in arc:hub unless data storage arc:hub_core init run function arc:portals/hub/place_tower