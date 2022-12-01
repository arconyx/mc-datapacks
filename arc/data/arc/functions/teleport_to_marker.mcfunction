execute store result entity @s Pos[0] double 1 run scoreboard players get #DataStore teleportPosX
execute store result entity @s Pos[1] double 1 run scoreboard players get #DataStore teleportPosY
execute store result entity @s Pos[2] double 1 run scoreboard players get #DataStore teleportPosZ
tp @a[tag=teleportingPlayer] @s
kill @s