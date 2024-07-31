tag @s remove holdingTalkingItem
# TODO: don't trigger on death

# do unequip actions
scoreboard players add @s talkingTimesUnequipped 1

# action 6
execute if score @s talkingTimesUnequipped matches 3 run scoreboard players set @s talkingActionFlag 6
execute if score @s talkingTimesUnequipped matches 3 run return run function talk:say {text: "HEY NO-"}

# action 8
execute if score @s talkingActionFlag matches 7 if score @s talkingTimesUnequipped matches 4 run function talk:say {text: "You rude little-"}
execute if score @s talkingActionFlag matches 7 if score @s talkingTimesUnequipped matches 4 run return run scoreboard players set @s talkingActionFlag 8

# action 10
execute if score @s talkingActionFlag matches 9 if score @s talkingTimesUnequipped matches 5 run function talk:say {text: "Alright-"} 
execute if score @s talkingActionFlag matches 9 if score @s talkingTimesUnequipped matches 5 run return run scoreboard players set @s talkingActionFlag 10
