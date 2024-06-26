#Kill boss
kill @e[tag=arenaBoss]

#Reset arena
function arena:clear_tags
item replace entity @e[tag=arenaMaster,limit=1,sort=nearest] armor.chest with minecraft:netherite_chestplate[enchantments={levels:{"arena:check_for_stray_player":1}}]
bossbar remove minecraft:arena_boss_health