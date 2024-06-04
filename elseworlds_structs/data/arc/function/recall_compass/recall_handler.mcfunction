execute if items entity @s weapon.mainhand minecraft:compass run function arc:recall_compass/lodestone_teleport
execute if items entity @s weapon.mainhand minecraft:recovery_compass run function arc:recall_compass/recovery_teleport
# Revoke advancement
advancement revoke @s only arc:compass_right_click