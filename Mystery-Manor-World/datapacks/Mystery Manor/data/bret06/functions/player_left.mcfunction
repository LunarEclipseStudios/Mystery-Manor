scoreboard players reset @s left
execute if entity @s[tag=opening_played] run function bret06:left_variations/opening_played
execute unless entity @s[tag=opening_played] run function bret06:left_variations/opening_need