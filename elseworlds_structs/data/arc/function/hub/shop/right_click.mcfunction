advancement revoke @s only arc:purchase_trigger

# Tag player so the interaction entity knows who is responsible
tag @s add customer

execute as @e[type=interaction,distance=..12] run function arc:hub/shop/find_interaction

# clear tag
tag @s remove customer