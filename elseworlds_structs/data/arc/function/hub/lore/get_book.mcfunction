say getting book from slot

# store target slot in a score
execute store result score @s lastShelfSlot run data get storage arc:lore_shelf shelf.last_interacted_slot

# data needs to be copied before we fun find_slot because this will be a destructive operation
# and we want the shelf data to stay intact for when we replace the bookshelf later
data modify storage arc:lore_shelf book_search set from storage arc:lore_shelf shelf.Items

# find the slot we're after
# if this fails then fail get_book too
# target shelf is always in the first slot after running find_slot
execute unless function arc:hub/lore/find_slot run return fail

# copy the book into dedicated storage
data modify storage arc:lore_shelf item set from storage arc:lore_shelf book_search[0]

# return a sucess
# this gets an explicit call because data modify will return an error if the existing data happens to be the same as the new data
return 1
