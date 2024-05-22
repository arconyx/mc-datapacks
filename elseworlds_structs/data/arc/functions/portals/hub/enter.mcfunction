execute in arc:hub unless data storage arc:hub_core init run function arc:portals/hub/place_tower
execute in arc:hub unless data storage arc:hub_core x run tellraw @s {"text": "Coordinates not found", "color": "red"}
execute in arc:hub run function arc:portals/hub/teleport_to_coords with storage arc:hub_core