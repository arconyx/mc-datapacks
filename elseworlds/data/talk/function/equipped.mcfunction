tag @s add holdingTalkingItem

# do equipped actions

scoreboard players add @s talkingTimesEquipped 1

execute if score @s talkingActionFlag matches 16.. run return fail

# action 1
execute if score @s talkingTimesEquipped matches 1 run return run function talk:say {text: "Hey!"}
# action 2
execute if score @s talkingTimesEquipped matches 2 run return run function talk:say {text: "Hey you!"}

# action 3 and start timer for action 5
execute if score @s talkingTimesEquipped matches 3 run scoreboard players set @s talkingTimer 1
execute if score @s talkingTimesEquipped matches 3 run return run function talk:say {text: "You with the ugly face."}

# action 7
execute if score @s talkingActionFlag matches 6 if score @s talkingTimesEquipped matches 4 run function talk:say {text: "Rude."}
execute if score @s talkingActionFlag matches 6 if score @s talkingTimesEquipped matches 4 run scoreboard players set @s talkingTimer 1
execute if score @s talkingActionFlag matches 6 if score @s talkingTimesEquipped matches 4 run return run scoreboard players set @s talkingActionFlag 7

# action 9
execute if score @s talkingActionFlag matches 8 if score @s talkingTimesEquipped matches 5 run function talk:say {text: "Okay, listen man."}
execute if score @s talkingActionFlag matches 8 if score @s talkingTimesEquipped matches 5 run scoreboard players set @s talkingTimer 1
execute if score @s talkingActionFlag matches 8 if score @s talkingTimesEquipped matches 5 run return run scoreboard players set @s talkingActionFlag 9

# action 11
execute if score @s talkingActionFlag matches 10 if score @s talkingTimesEquipped matches 6 run function talk:say {text: "You done? You done having fun?"}
execute if score @s talkingActionFlag matches 10 if score @s talkingTimesEquipped matches 6 run scoreboard players set @s talkingTimer 1
execute if score @s talkingActionFlag matches 10 if score @s talkingTimesEquipped matches 6 run return run scoreboard players set @s talkingActionFlag 11

# action 13
execute if score @s talkingActionFlag matches 12 if score @s talkingTimesEquipped matches 6 run function talk:say {text: "What did I tell you?"}
execute if score @s talkingActionFlag matches 12 if score @s talkingTimesEquipped matches 6 run scoreboard players set @s talkingTimer 1
execute if score @s talkingActionFlag matches 12 if score @s talkingTimesEquipped matches 6 run return run scoreboard players set @s talkingActionFlag 13