# Basic particle effect to indicate presence of portal
particle minecraft:portal ~ ~ ~ 0.05 1 0.05 1 1
# If all players are >5 blocks away terminate
execute unless entity @a[distance=..5] run return fail
# If player within 5 blocks amplify the particle effect
particle minecraft:portal ~ ~ ~ 0.05 1 0.05 1 10

# If player within 1 block run teleport handler
execute if entity @a[distance=1] run function arc:portals/hub/select_dimension