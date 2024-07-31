scoreboard players add @s talkingTimer 1

# track consecutive holding
execute unless predicate talk:talking_item_equipped run return run scoreboard players reset @s talkingTimer

# action 5
execute if score @s talkingTimesEquipped matches 3 if score @s talkingTimer matches 200 run return run function talk:say {text: "...I got your attention now?"}
execute if score @s talkingTimesEquipped matches 3 if score @s talkingTimer matches 240 run function talk:say {text: "Great."}
execute if score @s talkingTimesEquipped matches 3 if score @s talkingTimer matches 240 run return run scoreboard players reset @s talkingTimer

# action 7
execute if score @s talkingActionFlag matches 7 if score @s talkingTimer matches 40 run function talk:say {text: "Don't leave when I'm talking to you."}
execute if score @s talkingActionFlag matches 7 if score @s talkingTimer matches 40 run return run scoreboard players reset @s talkingTimer

# action 7
execute if score @s talkingActionFlag matches 9 if score @s talkingTimer matches 40 run function talk:say {text: "Trying to have a conversation here."}
execute if score @s talkingActionFlag matches 9 if score @s talkingTimer matches 40 run return run scoreboard players reset @s talkingTimer

# action 11
execute if score @s talkingActionFlag matches 11 if score @s talkingTimer matches 40 run function talk:say {text: "I swear, man, if you do that again, we are going to have a problem."}
execute if score @s talkingActionFlag matches 11 if score @s talkingTimer matches 40 run return run scoreboard players reset @s talkingTimer