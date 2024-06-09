# Load area
forceload add ~ ~

# If no players are in the maze generate it
# x,y,z are to restrict dimension. We probably don't need it with mazerunner tag but it pays to be safe.
function arc:maze/setup

# Select marker and teleport players to it.
# Order is important here. Don't rearrange these or we'll teleport the player in then trigger the second teleport
teleport @s @e[tag=maze_entrance,sort=nearest,limit=1]

# Cleanup forceload
forceload remove ~ ~
