scoreboard players add @s talkingTimer 1

# track consecutive holding
execute if score @s talkingTimesEquipped matches 3 unless predicate talk:talking_item_equipped run scoreboard players reset @s talkingTimer
execute if score @s talkingTimesEquipped matches 3 if score @s talkingTimer matches 200 run return run function talk:say {text: "...I got your attention now?"}
execute if score @s talkingTimesEquipped matches 3 if score @s talkingTimer matches 240 run return run function talk:say {text: "Great."}
execute if score @s talkingTimesEquipped matches 3 if score @s talkingTimer matches 241.. run scoreboard players reset @s talkingTimer