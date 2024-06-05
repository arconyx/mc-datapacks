# Find the chiseled bookshelf and copy data to storage (faster than working with data on the entity)
execute as @e[type=minecraft:marker,tag=lore_shelf,distance=..12,sort=nearest,limit=1] at @s if block ~ ~ ~ minecraft:chiseled_bookshelf run data modify storage arc:lore_shelf shelf set from block ~ ~ ~

function arc:hub/lore/get_book with storage arc:lore_shelf shelf

# Check the item is a written book
execute store success score @s stringComparison run data modify storage arc:lore_shelf item.id set value 'minecraft:written_book'
execute unless score @s stringComparison matches 0 run title @s actionbar {"text": "Invalid item: not written book", "color": "red"}
execute unless score @s stringComparison matches 0 run return fail

say item type check passed

# TODO title filter
execute store success score @s stringComparison run data modify storage arc:lore_shelf item.components.minecraft:written_book_content.title.raw set value '[LORE]'
execute unless score @s stringComparison matches 0 run title @s actionbar {"text": "Invalid item: not titled [LORE]", "color": "red"}
execute unless score @s stringComparison matches 0 run return fail

say item name check passed

item modify entity @s weapon.offhand {function: 'minecraft:set_lore', mode: 'replace_all', entity: 'this', lore: [{nbt: 'item.components.minecraft:written_book_content.pages[0].raw', storage: 'arc:lore_shelf'}]}