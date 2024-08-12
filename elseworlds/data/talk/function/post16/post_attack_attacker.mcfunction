execute store result score @s talkingRandom2 run random value 1..250
execute unless score @s talkingRandom matches 1..5 run return fail

execute if score @s talkingRandom matches 1 run return run function talk:say {text: "I got this!"}
execute if score @s talkingRandom matches 2 run return run function talk:say {text: "We're a good team."}
execute if score @s talkingRandom matches 3 run return run function talk:say {text: "Hyaah!"}
execute if score @s talkingRandom matches 4 run return run function talk:say {text: "And on this day, two foes - destined rivals - stood opposed, and they knew this fight, for one of them, would be their last."}
execute if score @s talkingRandom matches 5 run return run function talk:say {text: "Ow! Hey, watch where you point me."}

