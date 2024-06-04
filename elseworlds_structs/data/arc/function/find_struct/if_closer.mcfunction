# runs IF the latest point is closer than the last point

# update distance comparison variable
execute store result score @s locationSearch2 run scoreboard players get @s locationSearch1
# reduce step to match
execute store result storage arc:location_search step int 1 run scoreboard players get @s locationSearch2