kill @e[tag=murderer_count_model]
kill @e[tag=murderer_count]
summon minecraft:item_frame -71.5 39.45 16.00 {Facing:3b,Tags:["murderer_count_model"],Invisible:1b,Fixed:1b}
summon minecraft:villager -71.5 39.25 16.11 {Silent:1b,NoAI:1b,VillagerData:{profession:"minecraft:nitwit"},Tags:["murderer_count"]}
summon minecraft:armor_stand -71.5 38.7 16.1 {Tags:["murderer_count"],CustomName:'[{"text":"[Killer Count]","bold":false,"color":"red"}]',CustomNameVisible:1b,Small:1b,NoGravity:1b}

##start_delay
kill @e[tag=starting_delay_model]
kill @e[tag=starting_delay]
summon minecraft:item_frame -69.5 39.45 16.00 {Facing:3b,Tags:["starting_delay_model"],Invisible:1b,Fixed:1b}
summon minecraft:villager -69.5 39.25 16.11 {Silent:1b,NoAI:1b,VillagerData:{profession:"minecraft:nitwit"},Tags:["starting_delay"]}
summon minecraft:armor_stand -69.5 38.7 16.1 {Tags:["starting_delay"],CustomName:'[{"text":"[Start Delay]","bold":false,"color":"red"}]',CustomNameVisible:1b,Small:1b,NoGravity:1b}

##round_length
kill @e[tag=round_length_model]
kill @e[tag=round_length]
summon minecraft:item_frame -73.5 39.45 16.00 {Facing:3b,Tags:["round_length_model"],Invisible:1b,Fixed:1b}
summon minecraft:villager -73.5 39.25 16.11 {Silent:1b,NoAI:1b,VillagerData:{profession:"minecraft:nitwit"},Tags:["round_length"]}
summon minecraft:armor_stand -73.5 38.7 16.1 {Tags:["round_length"],CustomName:'[{"text":"[Round Length]","bold":false,"color":"red"}]',CustomNameVisible:1b,Small:1b,NoGravity:1b}