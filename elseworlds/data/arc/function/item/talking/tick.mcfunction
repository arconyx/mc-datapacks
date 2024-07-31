# run on equip functions
execute unless entity @s[tag=holdingTalkingItem] run function arc:item/talking/equipped

# run timers
execute if score @s talkingTimer matches 1.. run function arc:item/talking/timer