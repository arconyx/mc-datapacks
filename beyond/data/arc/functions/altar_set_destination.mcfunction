execute store result score #DataStore altarTeleportPosX run data get entity @s Pos[0]
execute store result score #DataStore altarTeleportPosY run data get entity @s Pos[1]
execute store result score #DataStore altarTeleportPosZ run data get entity @s Pos[2]

tellraw @s ["Altars will now teleport players to ", {"score":{"name":"#DataStore","objective":"altarTeleportPosX"},"color":"yellow"}, ", ", {"score":{"name":"#DataStore","objective":"altarTeleportPosY"},"color":"yellow"}, ", ", {"score":{"name":"#DataStore","objective":"altarTeleportPosZ"},"color":"yellow"}]