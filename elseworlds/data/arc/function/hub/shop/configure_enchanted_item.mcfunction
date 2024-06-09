execute as @e[type=minecraft:item_display,distance=..2,sort=nearest,limit=1] run data modify entity @s item.components.minecraft:custom_data.store.enchantment set value 1
$execute as @e[type=minecraft:item_display,distance=..2,sort=nearest,limit=1] run data modify entity @s item.components.minecraft:custom_data.store.cost set value $(cost)
$execute as @e[type=minecraft:item_display,distance=..2,sort=nearest,limit=1] run data modify entity @s item.components.minecraft:custom_data.store.name set value $(name)


