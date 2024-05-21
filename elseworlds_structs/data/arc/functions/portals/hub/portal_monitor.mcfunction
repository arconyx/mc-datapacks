# Calls function that generates particles and teleports players
# No point running this on markers beyond a certain distance.
execute in arc:hub as @e[type=minecraft:marker,tag=portal] at @s if entity @a[distance=..30] run function arc:portals/hub/portal