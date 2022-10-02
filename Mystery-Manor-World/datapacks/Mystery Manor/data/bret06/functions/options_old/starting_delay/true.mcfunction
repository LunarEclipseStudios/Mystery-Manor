scoreboard players reset @s sdtrue
execute unless score true gamestarted matches 1 run playsound minecraft:block.note_block.pling music @s ~ ~ ~ 999999999999.0 2.0 1.0
execute unless score true gamestarted matches 1 run scoreboard players set true starting_delay 1
