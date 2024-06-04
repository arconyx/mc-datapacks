tag @s add recalling
summon minecraft:marker ~ ~ ~ {Tags: ["recallTeleportTarget"]}
execute as @e[tag=recallTeleportTarget,sort=nearest,limit=1] run function arc:recall_compass/teleport_to_marker
tag @s remove recalling