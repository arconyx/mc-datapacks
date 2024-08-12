execute if score @s talkingTimer matches 520 run return run function talk:say {text: "I don't have a name."}
execute if score @s talkingTimer matches 560 run return run function talk:say {text: "Which is hurtful, if I'm being honest."}

execute if score @s talkingTimer matches 600 run function talk:say {text: "You should get onto that."}
execute if score @s talkingTimer matches 600.. run scoreboard players set @s talkingActionFlag 16
execute if score @s talkingTimer matches 600.. run scoreboard players reset @s talkingActionFlag

