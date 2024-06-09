# execute as @e[type=minecraft:marker,tag=shop_save] at @s run ...
say saving data for entity

execute as @e[type=minecraft:item_display,tag=shop_display,sort=nearest,limit=1] run say i'm the entity

# save entity data to marker
data modify entity @s data.item set from entity @e[type=minecraft:item_display,tag=shop_display,distance=..0.001,sort=nearest,limit=1] item