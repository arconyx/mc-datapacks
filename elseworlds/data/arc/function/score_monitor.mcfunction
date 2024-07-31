execute as @a[scores={deathDetector=1..}] run function arc:run_death_functions
execute as @a[tag=holdingTalkingItem] unless predicate arc:talking_item_equipped run function arc:item/talking/unequipped