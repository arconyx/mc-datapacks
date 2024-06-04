advancement revoke @s only arc:price_trigger

# Tag player so the interaction entity knows who is responsible
tag @s add customer2

execute as @e[type=interaction,distance=..12] run function arc:hub/shop/find_price

# clear tag
tag @s remove customer2