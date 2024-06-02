# Handle recipe
execute if data entity @s Passengers[0].item.components."minecraft:custom_data".store.recipe run return run function arc:hub/shop/process_recipe with entity @s Passengers[0].item.components."minecraft:custom_data".store

# If not a recipe give the item
function arc:hub/shop/process_item with entity @s Passengers[0].item.components."minecraft:custom_data".store