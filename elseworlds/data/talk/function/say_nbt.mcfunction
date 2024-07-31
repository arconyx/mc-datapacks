# add user text
$data modify storage talk:cache text set value $(text)

# set prefix
data modify storage talk:cache text prepend value [{"text": "[Voice] "}]
execute if score @s talkingNameKnown matches 1 run data modify storage talk:cache text prepend value [{"text": "["}, {"entity": "@s", "nbt": "SelectedItem.components.minecraft:custom_name", "interpret": true}, {"text": "] "}] 

return run tellraw @s {"storage": "talk:cache", "nbt": "text", "interpret": true}