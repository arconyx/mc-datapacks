# Find the chiseled bookshelf and copy data to storage (faster than working with data on the entity)
execute as @e[type=minecraft:marker,tag=lore_shelf,distance=..12,sort=nearest,limit=1] at @s if block ~ ~ ~ minecraft:chiseled_bookshelf run data modify storage arc:lore_shelf shelf set from block ~ ~ ~

execute store success score @s getBookSuccess run function arc:hub/lore/get_book with storage arc:lore_shelf shelf
execute if score @s getBookSuccess matches 0 run return fail

item modify entity @s weapon.offhand {function: 'minecraft:set_lore', mode: 'replace_all', entity: 'this', lore: []}
function arc:hub/lore/iterate_page

# todo: destroy book