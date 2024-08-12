scoreboard players set @s talkingIsNamed 1
execute if score @s talkingActionFlag matches 16.. run function talk:say {text: "A name! I have a name! I don't like it."}
execute if score @s talkingActionFlag matches 16.. run scoreboard players set @s talkingNameKnown 1