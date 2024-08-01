# action 4
execute unless score @s talkingActionFlag matches 4.. if score @s talkingTimesEquipped matches 3 run function talk:say {text: "I said what I said, no need to get defensive."}
execute unless score @s talkingActionFlag matches 4.. if score @s talkingTimesEquipped matches 3 run return run scoreboard players set @s talkingActionFlag 4
