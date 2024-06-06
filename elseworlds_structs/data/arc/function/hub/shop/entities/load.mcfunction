say loading data for entity

# summon interaction entity and item display
function arc:hub/shop/entities/summon_entities

execute as @e[type=minecraft:item_display,tag=shop_display,sort=nearest,limit=1] run say i'm the entity

# copy data across from marker
data modify entity @e[type=minecraft:item_display,tag=shop_display,distance=..1,sort=nearest,limit=1] item set from entity @s data.item

return 1