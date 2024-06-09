# Calls function that generates particles and teleports players
# No point running this on markers beyond a certain distance.
execute in arc:hub as @e[type=minecraft:marker,tag=portal_up] at @s if entity @a[distance=..4] run function arc:hub/portal_up/portal