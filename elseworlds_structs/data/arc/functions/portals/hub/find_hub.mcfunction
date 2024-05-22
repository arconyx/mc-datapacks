tellraw @a {"text": "Searching for hub", "color": "gray"}
execute in arc:hub as @e[type=minecraft:marker,tag=tower_centre,sort=nearest,limit=1] at @s run return run function arc:portals/hub/save_hub_centre
schedule function arc:portals/hub/find_hub 10t replace