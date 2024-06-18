# called as @e[type=marker] if in maze

execute if entity @s[tag=maze_tree] if entity @a[distance=..30] run function arc:maze/exit
execute if entity @s[tag=maze_internal_tp_marker] if entity @a[distance=..30] run function arc:maze/internal_teleport