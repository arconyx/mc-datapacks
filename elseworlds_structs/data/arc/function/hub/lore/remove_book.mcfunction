say removing book

# Find block state
# Default value to 'false'
# Iff slot was not last selected and is occupied we set the value to 'true'
data modify storage arc:lore_shelf block_state.zero set value 'false'
execute unless score @s lastShelfSlot matches 0 if block ~ ~ ~ minecraft:chiseled_bookshelf[slot_0_occupied=true] run data modify storage arc:lore_shelf block_state.zero set value 'true'

data modify storage arc:lore_shelf block_state.one set value 'false'
execute unless score @s lastShelfSlot matches 1 if block ~ ~ ~ minecraft:chiseled_bookshelf[slot_1_occupied=true] run data modify storage arc:lore_shelf block_state.one set value 'true'

data modify storage arc:lore_shelf block_state.two set value 'false'
execute unless score @s lastShelfSlot matches 2 if block ~ ~ ~ minecraft:chiseled_bookshelf[slot_2_occupied=true] run data modify storage arc:lore_shelf block_state.two set value 'true'

data modify storage arc:lore_shelf block_state.three set value 'false'
execute unless score @s lastShelfSlot matches 3 if block ~ ~ ~ minecraft:chiseled_bookshelf[slot_3_occupied=true] run data modify storage arc:lore_shelf block_state.three set value 'true'

data modify storage arc:lore_shelf block_state.four set value 'false'
execute unless score @s lastShelfSlot matches 4 if block ~ ~ ~ minecraft:chiseled_bookshelf[slot_4_occupied=true] run data modify storage arc:lore_shelf block_state.four set value 'true'

data modify storage arc:lore_shelf block_state.five set value 'false'
execute unless score @s lastShelfSlot matches 5 if block ~ ~ ~ minecraft:chiseled_bookshelf[slot_5_occupied=true] run data modify storage arc:lore_shelf block_state.five set value 'true'

# we also have to worry about facing
data modify storage arc:lore_shelf block_state.facing set value 'north'
execute if block ~ ~ ~ minecraft:chiseled_bookshelf[facing=east] run data modify storage arc:lore_shelf block_state.facing set value 'east'
execute if block ~ ~ ~ minecraft:chiseled_bookshelf[facing=south] run data modify storage arc:lore_shelf block_state.facing set value 'south'
execute if block ~ ~ ~ minecraft:chiseled_bookshelf[facing=west] run data modify storage arc:lore_shelf block_state.facing set value 'west'

say state found


# Remove book from data slot
$data remove storage arc:lore_shelf shelf.Items[$(last_interacted_slot)]

function arc:hub/lore/spawn_shelf with storage arc:lore_shelf block_state

# copy data across
data modify block ~ ~ ~ Items set from storage arc:lore_shelf shelf.Items

playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 1
particle minecraft:wax_off ~ ~0.5 ~ 0.5 0.5 0.5 1 10