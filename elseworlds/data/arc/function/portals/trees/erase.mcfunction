advancement revoke @s only arc:triggers/portal_breaker_right_click

execute unless data entity @s SelectedItem.components.minecraft:custom_data.portal_breaker run return fail

execute unless entity @e[type=minecraft:marker,tag=portal_tree,distance=..4] run return run tellraw @s {"text": "Nearby portal not found.", "color": "gray"}
execute unless entity @e[type=minecraft:marker,tag=portal_tree_exit,distance=..4] run return run tellraw @s {"text": "Nearby portal exit not found.", "color": "gray"}

kill @e[type=minecraft:marker,tag=portal_tree,distance=..4,sort=nearest,limit=1]
kill @e[type=minecraft:marker,tag=portal_tree_exit,distance=..4,sort=nearest,limit=1]
tellraw @s {"text": "Erased nearest portal and portal exit", "color": "gray"}
# execute if entity @s[gamemode=!creative] run say Broke a portal

item modify entity @s weapon.mainhand arc:remove_one_item