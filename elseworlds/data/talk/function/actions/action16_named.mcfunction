execute if score @s talkingTimer matches 520 run return run function talk:say {text: "My name should be obvious, of course."}

execute if score @s talkingTimer matches 560 run function talk:say_raw {text: '[ {"text": "It\'s "}, {"entity": "@s", "nbt": "SelectedItem.components.minecraft:custom_name", "interpret": true}]'}
execute if score @s talkingTimer matches 560 run return run scoreboard players set @s talkingNameKnown 1

execute if score @s talkingTimer matches 600 run return run function talk:say {text: "It's a good name and you're stuck with it like you're stuck with me."}
execute if score @s talkingTimer matches 640 run return run function talk:say {text: "I think this is going to be fun."}
execute if score @s talkingTimer matches 680 run return run function talk:say {text: "So..."}

execute if score @s talkingTimer matches 720 run function talk:say {text: "What's next?"}
execute if score @s talkingTimer matches 720.. run scoreboard players set @s talkingActionFlag 16
execute if score @s talkingTimer matches 720.. run scoreboard players reset @s talkingTimer

