execute store result bossbar minecraft:arena_boss_health max run data get entity @s attributes[{id:"minecraft:generic.max_health"}].base
execute store result bossbar minecraft:arena_boss_health value run data get entity @s Health
bossbar set minecraft:arena_boss_health players @a[tag=arenaPlayer]