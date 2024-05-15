# Run as goat

# Kill goat
kill @s

# Special effects
summon minecraft:lightning_bolt
particle minecraft:portal ~ ~ ~ 1 1 1 0 500
playsound minecraft:entity.enderman.teleport block @a ~ ~ ~ 100

# Prepare players
tag @a[distance=..2.5] add teleportingPlayerAltar
execute as @a[tag=teleportingPlayerAltar,gamemode=survival] run gamemode adventure @s
execute as @a[distance=..2.5] at @s store result score @s altarReturnTeleportPosX run data get entity @s Pos[0]
execute as @a[distance=..2.5] at @s store result score @s altarReturnTeleportPosY run data get entity @s Pos[1]
execute as @a[distance=..2.5] at @s store result score @s altarReturnTeleportPosZ run data get entity @s Pos[2]

# Do teleport
summon minecraft:marker ~ ~ ~ {Tags: ["teleportMarkerAltar"]}
execute as @e[tag=teleportMarkerAltar] run function arc:_altar_teleport_to_marker

# Cleanup
tag @a[tag=teleportingPlayerAltar] remove teleportingPlayerAltar