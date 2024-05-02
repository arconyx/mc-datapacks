# Run as marker
# Teleports all players with recalling tag to marker
execute store result entity @s Pos[0] double 1 run data get storage arc:recall_compass x
execute store result entity @s Pos[1] double 1 run data get storage arc:recall_compass y
execute store result entity @s Pos[2] double 1 run data get storage arc:recall_compass z
tp @a[tag=recalling] @s
kill @s