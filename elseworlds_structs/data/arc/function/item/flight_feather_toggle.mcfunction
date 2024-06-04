# Mode toggle for flight feather

# First clear the advancement
advancement revoke @s only arc:triggers/flight_feather_right_click

# Cooldown so you can't accidentally cycle it multiple times with a long click
execute if score @s featherRightClickCooldown matches 1.. run return fail
# If cooldown is inactive start it
scoreboard players set @s featherRightClickCooldown 4

# Update feather
# If sneaking
execute if predicate arc:is_sneaking if predicate arc:flight/up run title @s actionbar {"text": "Down", "color": "gray"}
execute if predicate arc:is_sneaking if predicate arc:flight/up run return run item modify entity @s weapon.mainhand arc:flight/flight_down

execute if predicate arc:is_sneaking if predicate arc:flight/hover run title @s actionbar {"text": "Up", "color": "gray"}
execute if predicate arc:is_sneaking if predicate arc:flight/hover run return run item modify entity @s weapon.mainhand arc:flight/flight_up

execute if predicate arc:is_sneaking if predicate arc:flight/down run title @s actionbar {"text": "Hover", "color": "gray"}
execute if predicate arc:is_sneaking if predicate arc:flight/down run return run item modify entity @s weapon.mainhand arc:flight/flight_hover

# Else
execute if predicate arc:flight/up run title @s actionbar {"text": "Hover", "color": "gray"}
execute if predicate arc:flight/up run return run item modify entity @s weapon.mainhand arc:flight/flight_hover

execute if predicate arc:flight/hover run title @s actionbar {"text": "Down", "color": "gray"}
execute if predicate arc:flight/hover run return run item modify entity @s weapon.mainhand arc:flight/flight_down

execute if predicate arc:flight/down run title @s actionbar {"text": "Up", "color": "gray"}
execute if predicate arc:flight/down run return run item modify entity @s weapon.mainhand arc:flight/flight_up