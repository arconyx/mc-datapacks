# Run as marker
execute store result entity @s Pos[0] double 1 run scoreboard players get #DataStore returnTeleportPosX
execute store result entity @s Pos[1] double 1 run scoreboard players get #DataStore returnTeleportPosY
execute store result entity @s Pos[2] double 1 run scoreboard players get #DataStore returnTeleportPosZ
tp @a[tag=returningPlayerAltar] @s
kill @s