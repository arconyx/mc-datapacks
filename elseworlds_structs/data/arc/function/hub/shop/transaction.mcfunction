execute at @s run particle minecraft:wax_on ~ ~0.5 ~ 0.1 0.2 0.1 0.1 3
execute at @s run playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 1

# Handle recipe
execute if data entity @s Passengers[0].item.components."minecraft:custom_data".store.recipe run return run function arc:hub/shop/process_recipe with entity @s Passengers[0].item.components."minecraft:custom_data".store
execute if data entity @s Passengers[0].item.components."minecraft:custom_data".store.enchantment at @s run return run function arc:hub/shop/process_enchantment with entity @s Passengers[0].item.components."minecraft:custom_data".store

# If not a recipe give the item
execute at @s run function arc:hub/shop/process_item with entity @s Passengers[0].item.components."minecraft:custom_data".store