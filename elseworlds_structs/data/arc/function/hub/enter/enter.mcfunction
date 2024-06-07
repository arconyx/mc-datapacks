execute if entity @s[gamemode=!creative] run tag @s add hubber
execute if entity @s[gamemode=!creative] run gamemode adventure @s

# save player position in their dimension
execute if dimension minecraft:overworld run function arc:hub/enter/overworld
execute if dimension arc:spaghetti run function arc:hub/enter/alltree
execute if dimension arc:lake run function arc:hub/enter/lake hub# if hub location known teleport player in and returne execute if data storage arc:hub_core x in arc:hub run return run function arc:hub/enter/on_enterse g# else generate hubra# tellraw @s {"text": "Coordinates not found", "color": "red"}e execute in arc:hub unless data storage arc:hub_core init run function arc:hub/enter/place_tower