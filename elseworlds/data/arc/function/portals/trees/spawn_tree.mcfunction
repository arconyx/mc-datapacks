execute if score @p lockPortalSapling matches 1.. run return run scoreboard players remove @p lockPortalSapling 1
scoreboard players set @p lockPortalSapling 20

scoreboard players set @s lockPortalSapling 1

execute if dimension minecraft:the_nether run title @p actionbar {"text": "Incompatible dimension", "color": "red"} 
execute if dimension minecraft:the_end run title @p actionbar {"text": "Incompatible dimension", "color": "red"}
execute if dimension minecraft:the_nether run return run kill @s
execute if dimension minecraft:the_end run return run kill @s

# tellraw @p {"text": "Growing sapling", "color": "gray"}
execute unless data entity @s data.sapling run tellraw @p {"text": "No sapling data found", "color": "red"}

function arc:portals/trees/place_rotated/rotated_wrapper

kill @s