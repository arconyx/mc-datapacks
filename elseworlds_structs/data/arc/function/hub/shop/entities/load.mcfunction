say loading data for entity

# summon interaction entity and item display
function arc:hub/shop/entities/summon_entities

# copy data across from marker
data modify entity @e[type=minecraft:item_display,tag=shop_display,distance=..0.001,sort=nearest,limit=1] item set from entity @s data.item