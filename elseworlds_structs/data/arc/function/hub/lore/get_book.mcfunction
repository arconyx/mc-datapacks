say getting book

# check selected slot matches last interacted
# this should always be true if the slot list is ordered
$scoreboard players set @s lastShelfSlot $(last_interacted_slot)
$execute store result score @s selectedShelfSlot run data get storage arc:lore_shelf shelf.Items[$(last_interacted_slot)].Slot
execute unless score @s selectedShelfSlot = @s lastShelfSlot run title @a[tag=loreWriter] actionbar {"text": "Error: list index does not match slot number", "color": "red"}
execute unless score @s selectedShelfSlot = @s lastShelfSlot run return fail

say slot check passed

$data modify storage arc:lore_shelf item set from storage arc:lore_shelf shelf.Items[$(last_interacted_slot)]

# Check the item is a written book
execute store success score @s stringComparison run data modify storage arc:lore_shelf item.id set value 'minecraft:written_book'
execute unless score @s stringComparison matches 0 run title @s actionbar {"text": "Invalid item: not written book", "color": "red"}
execute unless score @s stringComparison matches 0 run return fail

say item type check passed

# title filter
execute store success score @s stringComparison run data modify storage arc:lore_shelf item.components.minecraft:written_book_content.title.raw set value '[LORE]'
execute unless score @s stringComparison matches 0 run title @s actionbar {"text": "Invalid item: not titled [LORE]", "color": "red"}
execute unless score @s stringComparison matches 0 run return fail

say item name check passed
