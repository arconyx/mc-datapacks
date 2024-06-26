#Unfreeze boss
data modify entity @e[tag=arenaBoss, limit=1, sort=nearest] Invunerable set value 0
data modify entity @e[tag=arenaBoss, limit=1, sort=nearest] NoAI set value 0

#Unfreeze players
execute as @a[tag=arenaContestant] run attribute @s minecraft:generic.movement_speed base set 0.1
execute as @a[tag=arenaContestant] run attribute @s minecraft:generic.jump_strength base set 0.42

#Display title
title @a[tag=arenaPlayer] title {"text":"Fight!", "color":"red"}

#Start fight end check
item replace entity @e[tag=arenaMaster,limit=1,sort=nearest] armor.chest with minecraft:netherite_chestplate[enchantments={levels:{"arena:detect_fight_end":1}}]