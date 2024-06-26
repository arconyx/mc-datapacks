#Add tags to the players
execute at @e[tag=arenaPodium] run tag @a[distance=..1.5,limit=1,sort=nearest] add arenaContestant
execute at @e[tag=arenaPodium, tag=arenaPurple] run tag @a[distance=..1.5,limit=1,sort=nearest] add arenaPurple
execute at @e[tag=arenaPodium, tag=arenaGreen] run tag @a[distance=..1.5,limit=1,sort=nearest] add arenaGreen
execute at @e[tag=arenaPodium, tag=arenaCyan] run tag @a[distance=..1.5,limit=1,sort=nearest] add arenaCyan

#Set up boss and bossbar
bossbar add arena_boss_health "temp_name"
execute if score @e[tag=arenaMaster,limit=1,sort=nearest] arenaFightSelection matches 1 run function arena:bosses/fast_skeleton_setup

#Teleport players into arena
execute at @e[tag=arenaStart, tag=arenaPurple] run tp @a[tag=arenaPurple] ~ ~ ~ facing entity @e[tag=arenaBossStart, limit=1, sort=nearest]
execute at @a[tag=arenaPurple] run particle minecraft:dragon_breath ~ ~ ~ 1 1 1 0 750
execute at @e[tag=arenaStart, tag=arenaGreen] run tp @a[tag=arenaGreen] ~ ~ ~ facing entity @e[tag=arenaBossStart, limit=1, sort=nearest]
execute at @a[tag=arenaGreen] run particle minecraft:falling_spore_blossom ~ ~ ~ 1 1 1 0 750
execute at @e[tag=arenaStart, tag=arenaCyan] run tp @a[tag=arenaCyan] ~ ~ ~ facing entity @e[tag=arenaBossStart, limit=1, sort=nearest]
execute at @a[tag=arenaCyan] run particle minecraft:enchanted_hit ~ ~ ~ 1 1 1 0 750

#Freeze players
execute as @a[tag=arenaContestant] run attribute @s minecraft:generic.movement_speed base set 0
execute as @a[tag=arenaContestant] run attribute @s minecraft:generic.jump_strength base set 0

#Remove podium perticles
item replace entity @e[tag=arenaMaster,limit=1,sort=nearest] armor.feet with minecraft:netherite_boots

#Begin countdown
schedule function arena:fight_countdown3 3s