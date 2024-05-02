execute if items entity @s weapon.mainhand minecraft:compass run function arc:lodestone_compass_teleport
execute if items entity @s weapon.mainhand minecraft:recovery_compass run function arc:recovery_compass_teleport
# Revoke advancement
advancement revoke @s only arc:compass_right_click