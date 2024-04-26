say Teleport triggered

# Revoke advancement before doing anything else
# So it isn't left granted if we bug out
advancement revoke @s only arc:compass_right_click

# Check the compass has a target set
execute if items entity @s weapon.mainhand minecraft:compass[!minecraft:lodestone_tracker] run tellraw @s {"text":"No lodestone set","color":"red"}
execute if items entity @s weapon.mainhand minecraft:compass[!minecraft:lodestone_tracker] run return 0

function arc:lodestone_compass_teleport
# Risk of removing the wrong item if scrolling? Test
item replace entity @s weapon.mainhand with minecraft:air
