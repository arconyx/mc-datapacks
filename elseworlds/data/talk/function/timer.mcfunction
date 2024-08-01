scoreboard players add @s talkingTimer 1

# track consecutive holding
execute unless predicate talk:talking_item_equipped run return run scoreboard players reset @s talkingTimer

# action 5
execute unless score @s talkingActionFlag matches 5.. if score @s talkingTimesEquipped matches 3 if score @s talkingTimer matches 200 run return run function talk:say {text: "...I got your attention now?"}
execute unless score @s talkingActionFlag matches 5.. if score @s talkingTimesEquipped matches 3 if score @s talkingTimer matches 240 run function talk:say {text: "Great."}
execute unless score @s talkingActionFlag matches 5.. if score @s talkingTimesEquipped matches 3 if score @s talkingTimer matches 240 run scoreboard players set @s talkingActionFlag 5
execute unless score @s talkingActionFlag matches 5.. if score @s talkingTimesEquipped matches 3 if score @s talkingTimer matches 240 run return run scoreboard players set @s talkingTimer 1

# action 7
execute if score @s talkingActionFlag matches 7 if score @s talkingTimer matches 40 run return run function talk:say {text: "Don't leave when I'm talking to you."}

# action 9
execute if score @s talkingActionFlag matches 9 if score @s talkingTimer matches 40 run return run function talk:say {text: "Trying to have a conversation here."}

# action 11
execute if score @s talkingActionFlag matches 11 if score @s talkingTimer matches 40 run return run function talk:say {text: "I swear, man, if you do that again, we are going to have a problem."}

# action 13
execute if score @s talkingActionFlag matches 13 if score @s talkingTimer matches 40 run return run function talk:say {text: "Play stupid games, win stupid prizes."}

# action 14
execute if score @s talkingActionFlag matches 5..13 run return run function talk:actions/action14





