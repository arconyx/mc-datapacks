# Called as the interaction entity
# Assume player has customer tag

execute store result score @s cost on passengers if entity @s[type=item_display] run data get entity @s item.components."minecraft:custom_data".store.cost
execute store result score @s currencyCount on target run clear @s minecraft:structure_block 0

execute if score @s currencyCount < @s cost run return run function arc:hub/shop/need_money with entity @s Passengers[0].item.components."minecraft:custom_data".store

function arc:hub/shop/transaction with entity @s Passengers[0].item.components."minecraft:custom_data".store