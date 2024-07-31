tag @s remove holdingTalkingItem
# TODO: don't trigger on death

# do unequip actions
scoreboard players add @s talkingTimesUnequipped 1

# action 6
execute if score @s talkingTimesUnequipped matches 3 run scoreboard players set @s talkingActionFlag 6
execute if score @s talkingTimesUnequipped matches 3 run return run function talk:say {text: "HEY NO-"}
