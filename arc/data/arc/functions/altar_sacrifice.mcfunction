# Run as goat
kill @s
summon minecraft:lightning_bolt
particle minecraft:portal ~ ~ ~ 1 1 1 0 500
playsound minecraft:entity.enderman.teleport block @a ~ ~ ~ 100
execute positioned ~ ~ ~ run tp @a[distance=..2.5] ~ ~17 ~