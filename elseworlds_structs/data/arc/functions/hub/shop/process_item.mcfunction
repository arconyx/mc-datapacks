$execute on target run clear @s minecraft:structure_block $(cost)
$execute on target run title @s actionbar {"text": "Purchased item for $(cost) rubies", "color": "gray"} 
# make item
summon minecraft:item ~ ~ ~ {PickupDelay: 500, Item: {Count: 1, id: "minecraft:stone"}, Tags: ["item_from_shop"]}
execute on target run data modify entity @e[type=item,tag=item_from_shop,distance=0,limit=1] Owner set from entity @s UUID
execute as @e[type=item,tag=item_from_shop,distance=0,limit=1] run function arc:hub/shop/copy_item
