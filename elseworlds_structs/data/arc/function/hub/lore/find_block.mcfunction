# check and update iterator
execute unless score @s raycastIteration matches 0..24 run tellraw @s {"text": "Bookshelf not found", "color": "red"}
execute unless score @s raycastIteration matches 0..24 run return fail
scoreboard players add @s raycastIteration 1

# if the current block isn't what we're after update our position and try again
execute unless block ~ ~ ~ minecraft:chiseled_bookshelf positioned ^ ^ ^0.5 run return run function arc:hub/lore/find_block

# copy bookshelf data to storage
data modify storage arc:lore_shelf shelf set from block ~ ~ ~

# return success
return 1