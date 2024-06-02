data modify entity @s Item merge from entity @e[type=item_display,sort=nearest,limit=1] item
data merge entity @s {PickupDelay: 0}
tag @s remove item_from_shop