execute if score @s talkingMobWarningCooldown matches 1.. run return run scoreboard players remove @s talkingMobWarningCooldown 1
execute if entity @e[type=creeper, distance=..5] run return run function talk:post16/creeper_warning
execute if entity @e[type=#talk:hostile, distance=..5] run return run function talk:post16/mob_warning_generic
