tellraw @a {"text": "Searching for hub", "color": "gray"}
execute in arc:hub as @e[type=minecraft:marker,tag=tower_centre,sort=nearest,limit=1] at @s run return run function arc:hub/enter/save_hub_centre
schedule function arc:hub/enter/find_hub 10t replace