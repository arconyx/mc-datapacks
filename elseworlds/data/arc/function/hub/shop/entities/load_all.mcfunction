# kill any existing shop displays iff they have a shop_save in the same place
execute at @e[type=minecraft:marker,tag=shop_save,distance=..30] run function arc:hub/shop/entities/kill_shop_zero

# load data
execute as @e[type=minecraft:marker,tag=shop_save,distance=..30] at @s if function arc:hub/shop/entities/load run kill @s