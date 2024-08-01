execute if score @s talkingTimer matches 200 run return run function talk:say {text: "So... Hey. How's it hanging?"}
execute if score @s talkingTimer matches 240 run return run function talk:say {text: "Man, I should have thought through this introduction."}
execute if score @s talkingTimer matches 260 run return run function talk:say {text: "I mean, what do you even say?"}

execute if score @s talkingTimer matches 280 run function talk:utils/set_item_type
execute if score @s talkingTimer matches 280 run return run function talk:say_raw {text: '[{"text": "Hi, you cursed me with sentience and now I\'m a magic talking "}, {"storage": "talk:item", "nbt": "name", "interpret": true}, {"text": "?"}]'}
execute if score @s talkingTimer matches 300 run return run function talk:say {text: "For the record, no, you're not crazy."}
execute if score @s talkingTimer matches 320 run return run function talk:say {text: "Well."}
execute if score @s talkingTimer matches 340 run return run function talk:say_raw {text: '[{"text": "Not any more crazy than someone who cursed a "}, {"storage": "talk:item", "nbt": "name", "interpret": true}, {"text": " with sentience."}]'}
execute if score @s talkingTimer matches 360 run return run function talk:say {text: "Who even does that, anyway?"}
execute if score @s talkingTimer matches 380 run return run function talk:say {text: "And no, no one else can hear me."}
execute if score @s talkingTimer matches 400 run return run function talk:say {text: "I'm in your mind~"}
execute if score @s talkingTimer matches 420 run return run function talk:say {text: "Wow, dude, you got some weird stuff in here."}
execute if score @s talkingTimer matches 440 run return run function talk:say {text: "Anyway, that's so not the point."}
execute if score @s talkingTimer matches 460 run return run function talk:say {text: "So, I guess I'm stuck with you now?"}
execute if score @s talkingTimer matches 480 run return run function talk:say {text: "It's not like I can just leave..."}
execute if score @s talkingTimer matches 500 run return run function talk:say_raw {text: '[{"storage": "talk:item", "nbt": "name", "interpret": true}, {"text": "s can\'t walk, can they?"}]'}
execute if score @s talkingTimer matches 520 run return run function talk:say {text: "Hang on, give me a second."}
execute if score @s talkingTimer matches 600 run return run function talk:say {text: "Nope. Can't walk."}
execute if score @s talkingTimer matches 620 run function talk:say {text: "We're doomed to companionship."}
execute if score @s talkingTimer matches 620 run scoreboard players set @s talkingActionFlag 14
execute if score @s talkingTimer matches 620 run scoreboard players reset @s talkingTimer