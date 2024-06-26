execute as @e[tag=arenaMaster,limit=1,sort=nearest] run say The battle is imminent! Players, to your podiums!
item replace entity @e[tag=arenaMaster,limit=1,sort=nearest] armor.feet with minecraft:netherite_boots[enchantments={levels:{"arena:podium_particles":1}}]
item replace entity @e[tag=arenaMaster,limit=1,sort=nearest] armor.chest with minecraft:netherite_chestplate
schedule function arena:start_boss_fight 5s