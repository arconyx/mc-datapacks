# Run as marker
# Teleports all players with teleporting tag to marker
say Moving marker

execute store result entity @s Pos[0] double 1 run data get storage arc:lodestone x
execute store result entity @s Pos[1] double 1 run data get storage arc:lodestone y
execute store result entity @s Pos[2] double 1 run data get storage arc:lodestone z
tp @a[tag=teleporting] @s
kill @s