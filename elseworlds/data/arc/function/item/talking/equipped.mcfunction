tag @s add holdingTalkingItem

# do equipped actions

scoreboard players add @s talkingTimesEquipped 1

execute if score @s talkingTimesEquipped matches 1 run return run function arc:item/talking/say {text: "Hey!"}
execute if score @s talkingTimesEquipped matches 2 run return run function arc:item/talking/say {text: "Hey you!"}

# say line and start timer
execute if score @s talkingTimesEquipped matches 3 run return run function arc:item/talking/actions/5
