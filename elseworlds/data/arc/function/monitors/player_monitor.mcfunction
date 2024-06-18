# executed as @a

# run gamemode_monitor for players not in maze
execute unless dimension arc:maze run function arc:maze/gamemode_monitor

# show markers for players with the appropriate score
execute if score @s showMarker matches 1 run function arc:highlight_markers

# run death command for appropriate players
execute if score @s deathDetector matches 1.. run function arc:last_death with entity @s LastDeathLocation

# update scores
execute if score @s featherRightClickCooldown matches 1.. run scoreboard players remove @s featherRightClickCooldown 1