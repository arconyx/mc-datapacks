# Run as marker at destination
execute store result entity @s Pos[0] double 1 run scoreboard players get #DataStore altarTeleportPosX
execute store result entity @s Pos[1] double 1 run scoreboard players get #DataStore altarTeleportPosY
execute store result entity @s Pos[2] double 1 run scoreboard players get #DataStore altarTeleportPosZ
tp @a[tag=teleportingPlayerAltar] @s
kill @s