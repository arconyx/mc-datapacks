# Called as the interaction entity
# Assume player has customer tag

execute store result score @s cost on passengers if entity @s[type=item_display] run data get entity @s item.components."minecraft:custom_data".store.cost
title @a[tag=customer2] actionbar [{"text": "Cost: ", "color": "gray"}, {"score": {"name": "@s", "objective": "cost"}, "color": "gray"}, {"text": " rubies", "color": "gray"}]