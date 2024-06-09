data modify entity @s Item.components.minecraft:stored_enchantments set from entity @e[type=item_display,sort=nearest,limit=1] item.components.minecraft:enchantments
data merge entity @s {PickupDelay: 0}
tag @s remove book_from_shop