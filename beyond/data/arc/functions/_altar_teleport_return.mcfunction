# Run as marker
execute store result entity @s Pos[0] double 1 run scoreboard players get @p altarReturnTeleportPosX
execute store result entity @s Pos[1] double 1 run scoreboard players get @p altarReturnTeleportPosY
execute store result entity @s Pos[2] double 1 run scoreboard players get @p altarReturnTeleportPosZ
execute at @s in minecraft:overworld run tp @a[tag=returningPlayerAltar] ~ ~ ~
kill @s