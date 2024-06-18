summon minecraft:ender_pearl ~ ~0.05 ~ {Tags: [catapult]}
data modify entity @e[tag=catapult,distance=..1,sort=nearest,limit=1] Owner set from entity @s Owner

