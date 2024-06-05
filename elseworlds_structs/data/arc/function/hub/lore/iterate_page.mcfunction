# Iteratively appends pages to lore
say iterating page

# append first page to lore
item modify entity @s weapon.offhand {function: 'minecraft:set_lore', mode: 'append', entity: 'this', lore: [{nbt: 'item.components.minecraft:written_book_content.pages[0].raw', storage: 'arc:lore_shelf', interpret: true}]}
# remove page from list
data remove storage arc:lore_shelf item.components.minecraft:written_book_content.pages[0]

# get number of remaining pages
execute store result score @s pageCount run data get storage arc:lore_shelf item.components.minecraft:written_book_content.pages
# if we have at least one page left run the function again
execute unless score @s pageCount matches 0 run function arc:hub/lore/iterate_page