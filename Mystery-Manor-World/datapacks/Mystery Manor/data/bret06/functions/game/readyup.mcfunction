effect give @s glowing 1 1 true
execute unless entity @s[tag=ready] run playsound block.note_block.pling master @s ~ ~ ~ 1.0 2
tag @s add ready
execute if score true starting matches 1 run title @a actionbar ["",{"text":"Game Start \u6981 ","color":"yellow"},{"text":"","color":"dark_gray"},{"score":{"name":"timer","objective":"start_timer"},"color":"white"}]

title @s title {"text":" "}
title @s times 0 20 20
title @s subtitle {"text":"Ready!","color":"green"}
execute unless score true dev_mode matches 1 run execute unless score count player_count matches 3.. run title @s actionbar {"text":"You Need Atleast 3 Players To Start The Game!","color":"red"}
execute if score count player_count matches 9.. run title @s actionbar {"text":"You Need A Maximum of 8 Players To Start The Game!","color":"red"}