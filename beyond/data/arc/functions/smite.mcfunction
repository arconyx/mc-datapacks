# Altar refill trigger
execute if predicate arc:refill as @e[type=minecraft:marker,tag=altar] at @s run function arc:altar_refill