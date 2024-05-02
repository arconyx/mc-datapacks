# Teleport player to from maze portal tree to overworld

# Basic particle effect to indicate presence of portal
particle minecraft:portal ~ ~ ~ 0.05 1 0.05 1 1
# If all players are >5 blocks away terminate
execute unless entity @a[distance=..5] run return fail
# If player within 5 blocks amplify the particle effect
particle minecraft:portal ~ ~ ~ 0.05 1 0.05 1 10
# If player within 1 block teleport them to overworld
# A slight offset is included so they don't get stuck in a teleport loop
execute as @a[distance=..1] in minecraft:overworld run teleport @s ~ ~ ~
