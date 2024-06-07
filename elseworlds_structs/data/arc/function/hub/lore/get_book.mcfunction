#say getting book from slot

# this function and its children have three key score objectives
# lastShelfSlot: last slot interacted with on the bookshelf, as set from the bookshelf data below
# selectedShelfSlot: Used by find_shelf to compare current shelf id with lastShelfSlot. Set by find_shelf.
# targetSlotIndex: tracks what list index the target slot is found at, set by find_shelf. Used to know what slot to remove in remove_book

# store target slot in a score
execute store result score @s lastShelfSlot run data get storage arc:lore_shelf shelf.last_interacted_slot

# data needs to be copied before we fun find_slot because this will be a destructive operation
# and we want the shelf data to stay intact for when we replace the bookshelf later
data modify storage arc:lore_shelf book_search set from storage arc:lore_shelf shelf.Items

# we also want to zero targetSlotIndex
# find_slot will increment it as it runs
scoreboard players set @s targetSlotIndex 0

# find the slot we're after
# if this fails then fail get_book too
# target shelf is always in the first slot after running find_slot
execute unless function arc:hub/lore/find_slot run return fail

# copy the book into dedicated storage
data modify storage arc:lore_shelf item set from storage arc:lore_shelf book_search[0]
# also copy the index into storage
execute store result storage arc:lore_shelf shelf.index int 1 run scoreboard players get @s targetSlotIndex

# return a sucess
# this gets an explicit call because data modify will return an error if the existing data happens to be the same as the new data
return 1
