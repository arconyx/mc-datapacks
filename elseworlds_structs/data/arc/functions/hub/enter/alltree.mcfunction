# Find exit marker and save coordinates
# We need to use an exit marker with portal trees so we don't drop people onto the portal again
execute store result score @s alltreeCoordinateX run data get entity @e[type=minecraft:marker,tag=portal_tree_exit,distance=..6,sort=nearest,limit=1] Pos[0] 1
execute store result score @s alltreeCoordinateY run data get entity @e[type=minecraft:marker,tag=portal_tree_exit,distance=..6,sort=nearest,limit=1] Pos[1] 1
execute store result score @s alltreeCoordinateZ run data get entity @e[type=minecraft:marker,tag=portal_tree_exit,distance=..6,sort=nearest,limit=1] Pos[2] 1
# If the exit marker exists we're done
execute if entity @e[type=minecraft:marker,tag=portal_tree_exit,distance=..4,sort=nearest,limit=1] run return 1

# Else fallback to player's position
execute store result score @s alltreeCoordinateX run data get entity @s Pos[0] 1
execute store result score @s alltreeCoordinateY run data get entity @s Pos[1] 1
execute store result score @s alltreeCoordinateZ run data get entity @s Pos[2] 1