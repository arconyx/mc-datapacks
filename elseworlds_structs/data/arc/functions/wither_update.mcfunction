# Rotate to face player
teleport @s ~ ~ ~ facing entity @p eyes

# Particle cage
particle minecraft:enchant ~ ~2 ~ 1 1 1 1 10
# Additional particles above beacon
particle minecraft:enchant ~ ~-1 ~ 0 0.5 0 1 5

# Check if beacon is in place, if not release wither
execute unless predicate arc:wither_beacon run function arc:wither_release