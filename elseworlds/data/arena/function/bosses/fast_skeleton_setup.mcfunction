#Summon boss and set up bossbar
execute at @e[type=minecraft:marker, tag=arenaBossStart, limit=1, sort=nearest] run summon minecraft:wither_skeleton ~ ~ ~ {Tags:[arenaBoss], ArmorItems:[{id:"minecraft:diamond_boots", count:1, components:{"minecraft:custom_name":'"Boots of Blinding Speed"', "minecraft:enchantments":{levels:{"arena:bossbar_updater":1}}}}, {}, {}, {id:"minecraft:diamond_helmet", count:1}], HandItems:[{id:"minecraft:iron_sword", count:1, components:{"minecraft:enchantments":{levels:{"arc:blindness":2}}}}, {}], attributes:[{base:1.5d, id:"minecraft:generic.scale"}, {base:100.0, id:"minecraft:generic.max_health"}, {base:0.4, id:"minecraft:generic.movement_speed"}], Health:100.0, ArmorDropChances:[1f, 0f, 0f, 0f], HandDropChances:[0f, 0f], CustomName:'"Jonah the Swift"', Invunerable:1, NoAI:1, PersistenceRequired:1}
bossbar set minecraft:arena_boss_health name "Jonah the Swift"

#Display title
title @a[tag=arenaPlayer] title {"text":"Jonah the Swift", "color":"dark_gray"}

#Setup player inventories
clear @a[tag=arenaContestant]
item replace entity @a[tag=arenaContestant] hotbar.0 with minecraft:diamond_axe 1
item replace entity @a[tag=arenaContestant] weapon.offhand with minecraft:shield 1
item replace entity @a[tag=arenaContestant] armor.feet with minecraft:diamond_boots 1
item replace entity @a[tag=arenaContestant] armor.legs with minecraft:diamond_leggings 1
item replace entity @a[tag=arenaContestant] armor.chest with minecraft:diamond_chestplate 1
item replace entity @a[tag=arenaPurple] armor.head with minecraft:leather_helmet[minecraft:dyed_color={rgb:8991416}] 1
item replace entity @a[tag=arenaGreen] armor.head with minecraft:leather_helmet[minecraft:dyed_color={rgb:6192150}] 1
item replace entity @a[tag=arenaCyan] armor.head with minecraft:leather_helmet[minecraft:dyed_color={rgb:1481884}] 1