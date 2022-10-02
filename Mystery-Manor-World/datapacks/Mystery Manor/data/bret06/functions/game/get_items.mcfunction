#player_setup
scoreboard players reset true gamestarted
team leave @a
scoreboard players reset count player_count
execute as @a at @s run scoreboard players add count player_count 1
execute unless score count player_count matches 3.. run title @a title {"text":" "}
execute unless score count player_count matches 3.. run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.0 1.0 1.0
execute unless score count player_count matches 3.. run title @a subtitle {"text":"You Need Atleast 3 Players To Start The Game!","color":"dark_red"}
execute if score count player_count matches 3.. run scoreboard players set true gamestarted 1
execute if score count player_count matches 3.. run function bret06:game/start