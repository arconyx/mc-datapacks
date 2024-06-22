scoreboard players add @s talkingPostAttack 1

# TODO: add fallback for unnamed item

execute if score @s talkingPostAttack matches 1 run data modify storage arc:talking message set value {text: "Hello"}
execute if score @s talkingPostAttack matches 2 run data modify storage arc:talking message set value {text: "I'm a talking item"}

execute if score @s talkingPostAttack matches 3 run data modify storage arc:talking message set value {text: "Or at least a prototype of one"}
execute if score @s talkingPostAttack matches 4 run data modify storage arc:talking message set value {text: "Showing basic progression"}
execute if score @s talkingPostAttack matches 5 run data modify storage arc:talking message set value {text: "I could have only a small chance to trigger"}
execute if score @s talkingPostAttack matches 6 run data modify storage arc:talking message set value {text: "And specific trigger conditions for specific messages"}
execute if score @s talkingPostAttack matches 7 run data modify storage arc:talking message set value {text: "I could even sometimes talk to other nearby players"}

tellraw @s [{"text": "["}, {"entity": "@s", "nbt": "SelectedItem.components.minecraft:custom_name", "interpret": true}, {"text": "] "}, {"storage": "arc:talking", "nbt": "message", "interpret": true}]

execute if score @s talkingPostAttack matches 7 run scoreboard players reset @s talkingPostAttack
