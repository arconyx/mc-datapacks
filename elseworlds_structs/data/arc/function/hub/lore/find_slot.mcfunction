# Find slot with slot id matching value in lastShelfSlot
#say checking slot

# get number of slots left
# if there are none throw an error and return
execute store result score @s listSize run data get storage arc:lore_shelf book_search
execute if score @s listSize matches 0 run tellraw @s {"text": "Error: Unable to find matching slot in shelf", "color": "red"}
execute if score @s listSize matches 0 run return fail

# get slot id of the first slot in the list
execute store result score @s selectedShelfSlot run data get storage arc:lore_shelf book_search[0].Slot

# if this is not the desired slot delete it from the list, update the index and try again
execute unless score @s selectedShelfSlot = @s lastShelfSlot run scoreboard players add @s targetSlotIndex 1
execute unless score @s selectedShelfSlot = @s lastShelfSlot run data remove storage arc:lore_shelf book_search[0]
execute unless score @s selectedShelfSlot = @s lastShelfSlot run function arc:hub/lore/find_slot

# if we do have the correct slot then we can just return a success
# get_book will read the book in the first shelf
execute if score @s selectedShelfSlot = @s lastShelfSlot run return 1