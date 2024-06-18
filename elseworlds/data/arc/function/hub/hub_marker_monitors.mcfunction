# Calls function that generates particles and teleports players
# No point running this on markers beyond a certain distance.

execute if entity @s[tag=portal] if entity @a[distance=..30] run function arc:hub/exits/portal

execute if entity @s[tag=portal_up] if entity @a[distance=..4] run function arc:hub/portal_up