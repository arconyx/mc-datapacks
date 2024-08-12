execute store result score @s talkingRandom run random value 1..54000
execute unless score @s talkingRandom matches 1..9 run return fail

execute if score @s talkingRandom matches 1 run return run function talk:say {text: "This is boring. You're boring. Do something interesting."}

execute if score @s talkingRandom matches 2 run function talk:say {text: "Creeper!"}
execute if score @s talkingRandom matches 2 run tag @s add talkingFakeCreeper
execute if score @s talkingRandom matches 2 run return run schedule function talk:actions/fake_creeper 2s replace


execute if score @s talkingRandom matches 3 run return run function talk:say {text: "What are you doing?"}
execute if score @s talkingRandom matches 4 run return run function talk:say {text: "The weather is so nice today."}
execute if score @s talkingRandom matches 5 run return run function talk:say {text: "Did you know that according to all known laws of aviation, there is NO WAY--"}
execute if score @s talkingRandom matches 6 run return run function talk:say {text: "-humming nonsensical tune-"}
execute if score @s talkingRandom matches 7 run return run function talk:say {text: "-humming Megalovania-"}
execute if score @s talkingRandom matches 8 run return run function talk:say {text: "I think we should dig straight down. Y'know. For fun."}


execute if score @s talkingRandom matches 100..200 run return run function talk:post16/mob_warnings