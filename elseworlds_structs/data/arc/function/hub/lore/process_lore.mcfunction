# Find the chiseled bookshelf and copy data to storage (faster than working with data on the block)
# If it fails abandon ship
# User notification will be handled internally
scoreboard players set @s raycastIteration 0
execute anchored eyes unless function arc:hub/lore/find_block run return fail

say found block

# extract book from slot to arc:lore_shelf item
execute store success score @s getBookSuccess run function arc:hub/lore/get_book
execute if score @s getBookSuccess matches 0 run tellraw @s {"text": "Error getting book", "color": "red"}
execute if score @s getBookSuccess matches 0 run return fail

# Check the item is a written book
# stringComparison is zero if the strings match because the modify fails
execute store success score @s stringComparison run data modify storage arc:lore_shelf item.id set value 'minecraft:written_book'
execute unless score @s stringComparison matches 0 run tellraw @s {"text": "Invalid item: not written book", "color": "red"}
execute unless score @s stringComparison matches 0 run return fail

say item type check passed

# title filter
execute store success score @s stringComparison run data modify storage arc:lore_shelf item.components.minecraft:written_book_content.title.raw set value '[LORE]'
execute unless score @s stringComparison matches 0 run tellraw @s {"text": "Invalid item: not titled [LORE]", "color": "red"}
execute unless score @s stringComparison matches 0 run return fail

say item name check passed

# clear existing lore then append each page as lore
item modify entity @s weapon.offhand {function: 'minecraft:set_lore', mode: 'replace_all', entity: 'this', lore: []}
function arc:hub/lore/iterate_page

# destroy book and play effects
function arc:hub/lore/update_shelf with storage arc:lore_shelf shelf