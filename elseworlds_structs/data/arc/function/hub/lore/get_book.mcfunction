$say getting book from slot $(last_interacted_slot)

# check selected slot matches last interacted
# this should always be true if the slot list is ordered
$scoreboard players set @s lastShelfSlot $(last_interacted_slot)
$execute store result score @s selectedShelfSlot run data get storage arc:lore_shelf shelf.Items[$(last_interacted_slot)].Slot
execute unless score @s selectedShelfSlot = @s lastShelfSlot run tellraw @s {"text": "Error: list index does not match slot number", "color": "red"}
execute unless score @s selectedShelfSlot = @s lastShelfSlot run return fail

$data modify storage arc:lore_shelf item set from storage arc:lore_shelf shelf.Items[$(last_interacted_slot)]
return 1
