# run on equip functions
execute unless entity @s[tag=holdingTalkingItem] run function arc:item/talking/equipped

# TODO: add fallback for unnamed item
# execute if score @s talkingTick matches 7 run data modify storage arc:talking message set value {text: "I could even sometimes talk to other nearby players"}
# tellraw @s [{"text": "["}, {"entity": "@s", "nbt": "SelectedItem.components.minecraft:custom_name", "interpret": true}, {"text": "] "}, {"storage": "arc:talking", "nbt": "message", "interpret": true}]
# execute if score @s talkingTick matches 7 run scoreboard players reset @s talkingTick
