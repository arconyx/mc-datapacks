# Find players outside the maze who are still in adventure mode
# Uses a tag to prevent interfering with players in adventure for other reasons
execute as @a[gamemode=adventure,tag=mazerunner] at @s unless dimension arc:maze run function arc:maze_remove_adventure