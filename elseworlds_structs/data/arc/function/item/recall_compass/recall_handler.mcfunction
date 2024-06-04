# Revoke advancement
advancement revoke @s only arc:triggers/compass_right_click

# check mainhand for security
execute unless data entity @s SelectedItem.components.minecraft:custom_data.teleporting run return fail

execute if items entity @s weapon.mainhand minecraft:compass run function arc:item/recall_compass/lodestone_teleport
execute if items entity @s weapon.mainhand minecraft:recovery_compass run function arc:item/recall_compass/recovery_teleport
