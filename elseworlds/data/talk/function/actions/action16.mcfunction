execute if score @s talkingTimer matches 200 run return run function talk:say {text: "You got a name?"}
execute if score @s talkingTimer matches 240 run return run function talk:say_raw {text: '{"selector": "@s"}'}
execute if score @s talkingTimer matches 240 run return run function talk:say_raw {text: '[{"selector": "@s"}, {"text": ". "}, {"selector": "@s", "italic": true}, {"text": ". "},  {"selector": "@s"}, {"text": "."}}]'}
execute if score @s talkingTimer matches 280 run return run function talk:say {text: "That's a dumb name."}
execute if score @s talkingTimer matches 320 run return run function talk:say {text: "That's fine, I can give you a better one."}
execute if score @s talkingTimer matches 360 run return run function talk:say {text: "How about..."}
execute if score @s talkingTimer matches 400 run return run function talk:say {text: "Shoe."}
execute if score @s talkingTimer matches 440 run return run function talk:say {text: "Yeah, that seems right."}
execute if score @s talkingTimer matches 480 run return run function talk:say {text: "Hello, Shoe."}

execute if score @s talkingTimer matches 520.. if data entity @s SelectedItem.components.minecraft:custom_name run return run function talk:actions/action16_named
execute if score @s talkingTimer matches 520.. unless data entity @s SelectedItem.components.minecraft:custom_name run return run function talk:actions/action16_unnamed

