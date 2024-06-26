#Clear inventory and award loot
clear @a[tag=arenaContestant]
execute if score @e[tag=arenaMaster,limit=1,sort=nearest] arenaFightSelection matches 1 run function arena:bosses/fast_skeleton_loot

#Teleport players out of arena
tp @a[tag=arenaContestant] @e[tag=arenaEntrance, limit=1, sort=nearest]

#Reset arena
function arena:clear_tags
item replace entity @e[tag=arenaMaster,limit=1,sort=nearest] armor.chest with minecraft:netherite_chestplate[enchantments={levels:{"arena:check_for_stray_player":1}}]
bossbar remove minecraft:arena_boss_health