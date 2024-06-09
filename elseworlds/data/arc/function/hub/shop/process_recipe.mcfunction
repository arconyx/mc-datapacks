# We start by trying to grant the recipe, so we can see if it fails before we apply the cost.
$execute store success score @s recipeGrantSuccess on target run recipe give @s $(recipe)
execute if score @s recipeGrantSuccess matches 0 on target run return run title @s actionbar {"text": "Recipe already learnt", "color": "red"} 

$execute on target run clear @s minecraft:structure_block $(cost)
$execute on target run title @s actionbar {"text": "Purchased recipe for $(cost) rubies", "color": "gray"} 
