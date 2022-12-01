tag @s add teleportingPlayer
summon minecraft:marker ~ ~ ~ {Tags: ["teleportMarker"]}
execute as @e[tag=teleportMarker] run function arc:_teleport_to_marker
tag @s remove teleportingPlayer