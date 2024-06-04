function arc:teleport_to_coords with storage arc:hub_core
execute as @e[type=marker,tag=hub_anvil] at @s unless block ~ ~ ~ minecraft:anvil run fill ~ ~ ~ ~ ~ ~ minecraft:anvil