scoreboard players set @s talkingIsNamed 1
execute if score @s talkingActionFlag matches 16.. run function talk:say {text: "A name! I have a name!"}
execute if score @s talkingActionFlag matches 16.. run schedule function talk:actions/on_named2 2s
execute if score @s talkingActionFlag matches 16.. run scoreboard players set @s talkingNameKnown 1