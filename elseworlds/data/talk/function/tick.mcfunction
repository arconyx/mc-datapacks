# run on equip functions
execute unless entity @s[tag=holdingTalkingItem] run function talk:equipped

# run timers
execute if score @s talkingTimer matches 1.. run function talk:timer

# update scores
execute if score @s talkingTriggerFire matches 1.. run scoreboard players reset @s talkingTriggerFire

execute if score @s talkingActionFlag matches 16.. run return run function talk:post16/tick