# Run as command block

# Special effects
# particle minecraft:portal ~ ~ ~ 1 1 1 0 500
# playsound minecraft:entity.enderman.teleport block @a ~ ~ ~ 100

# Prepare players
tag @a[distance=..1.5] add returningPlayerAltar
execute as @a[tag=returningPlayerAltar,gamemode=adventure] run gamemode survival @s

# Do teleport
summon minecraft:marker ~ ~ ~ {Tags: ["returnMarkerAltar"]}
execute as @e[tag=returnMarkerAltar] run function arc:_altar_teleport_return

# Cleanup
tag @a[tag=returningPlayerAltar] remove returningPlayerAltar