# Run as goat

# Kill goat
kill @s

# Special effects
summon minecraft:lightning_bolt
particle minecraft:portal ~ ~ ~ 1 1 1 0 500
playsound minecraft:entity.enderman.teleport block @a ~ ~ ~ 100

# Do teleport
tag @a[distance=..2.5] add teleportingPlayerAltar
summon minecraft:marker ~ ~ ~ {Tags: ["teleportMarkerAltar"]}
execute as @e[tag=teleportMarkerAltar] run function arc:_altar_teleport_to_marker
tag @a[tag=teleportingPlayerAltar] remove teleportingPlayerAltar