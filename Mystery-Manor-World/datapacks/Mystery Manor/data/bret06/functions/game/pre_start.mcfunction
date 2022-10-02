#player_setup
#setblock -44 66 -8 air
title @a times 0 0 0
title @a subtitle {"text":" "}
title @a actionbar {"text":" "}
title @a times 10 70 20
#execute unless score count player_count matches 3.. run setblock -44 66 -8 minecraft:stone_button[face=wall,facing=south]
scoreboard players reset true gamestarted
team leave @a
tag @a remove good
scoreboard players reset count player_count
execute as @a at @s run scoreboard players add count player_count 1
title @a title {"text":" "}
execute unless score count player_count matches 3.. run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.0 1.0 1.0
execute unless score true dev_mode matches 1 run execute unless score count player_count matches 3.. run title @a subtitle {"text":"You Need Atleast 3 Players To Start The Game!","color":"dark_red"}
execute unless score true dev_mode matches 1 run execute if score true starting_delay matches 1 run execute if score count player_count matches 3..8 run function bret06:game/starting_delay
execute unless score true dev_mode matches 1 run execute if score true starting_delay matches 2 run execute if score count player_count matches 3..8 run function bret06:game/start
execute if score true starting_delay matches 2 run execute if score count player_count matches 3..8 run stopsound @a
execute if score true starting_delay matches 2 run execute if score count player_count matches 3..8 run playsound minecraft:block.note_block.pling music @a ~ ~ ~ 999999999999.0 2.0 1.0
execute if score true starting_delay matches 2 run execute if score count player_count matches 3..8 run function bret06:music_play

execute if score true dev_mode matches 1 run execute if score true starting_delay matches 2 run execute if score count player_count matches 1.. run stopsound @a
execute if score true dev_mode matches 1 run execute if score true starting_delay matches 2 run execute if score count player_count matches 1.. run playsound minecraft:block.note_block.pling music @a ~ ~ ~ 999999999999.0 2.0 1.0
execute if score true dev_mode matches 1 run execute if score true starting_delay matches 2 run execute if score count player_count matches 1.. run function bret06:music_play
execute if score true dev_mode matches 1 run execute if score true starting_delay matches 1 run execute if score count player_count matches 1.. run function bret06:game/starting_delay
execute if score true dev_mode matches 1 run execute if score true starting_delay matches 2 run execute if score count player_count matches 1.. run function bret06:game/start
execute if score count player_count matches 9.. run title @a subtitle {"text":"You Need A Maximum of 8 Players To Start The Game!","color":"dark_red"}

function bret06:debug/front_door_lock