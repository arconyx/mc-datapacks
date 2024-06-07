function arc:teleport_to_coords with storage arc:hub_core
execute as @e[type=marker,tag=hub_anvil] at @s unless block ~ ~ ~ minecraft:anvil run fill ~ ~ ~ ~ ~ ~ minecraft:anvil
execute as @e[type=minecraft:marker,tag=portal_up] at @s run function arc:hub/shop/entities/load_all