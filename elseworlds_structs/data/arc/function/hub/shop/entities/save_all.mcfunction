# kill any existing save markers
execute at @e[type=minecraft:item_display,tag=shop_display] run kill @e[type=minecraft:marker,tag=shop_save,distance=0]

# summon a new marker for every shop display
execute at @e[type=minecraft:item_display,tag=shop_display] run summon marker ~ ~ ~ {Tags: [shop_save]}

# save item data to markers
execute as @e[type=minecraft:marker,tag=shop_save] at @s run function arc:hub/shop/entities/save