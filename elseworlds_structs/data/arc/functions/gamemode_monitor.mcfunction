# Find players outside the maze who are still in adventure mode
# Uses a tag to prevent interfering with players in adventure for other reasons
execute as @a[gamemode=adventure,tag=mazerunner] at @s unless dimension arc:maze unless dimension arc:hub run function arc:maze/remove_adventure
execute as @a[gamemode=adventure,tag=hubber] at @s unless dimension arc:maze unless dimension arc:hub run function arc:maze/remove_adventure
execute as @a[tag=fromHub] at @s unless dimension arc:maze run tag @s remove fromHub
