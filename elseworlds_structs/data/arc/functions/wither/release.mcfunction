# Disable wither invulnerability and enable AI
# Remove captive tag, we won't need it anymore
data modify entity @s Invulnerable set value 0b
data modify entity @s NoAI set value 0b
tag @s remove captive_wither
tag @s add freed_wither