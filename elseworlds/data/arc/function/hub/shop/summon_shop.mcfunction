# summon interaction entity and item display
function arc:hub/shop/entities/summon_entities
# copy data across from player
execute rotated as @p run teleport @e[type=interaction,distance=0] ~ ~ ~ ~ 0
function arc:hub/shop/modify_shop