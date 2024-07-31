# run on equip functions
execute unless entity @s[tag=holdingTalkingItem] run function arc:item/talking/equipped

# run timers
execute unless score @s talkingTimer matches ..0 run function arc:item/talking/timer