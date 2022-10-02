scoreboard players reset @s s_starting_delay
execute unless score true gamestarted matches 1 run playsound minecraft:block.note_block.pling music @s ~ ~ ~ 999999999999.0 2.0 1.0
execute unless score true gamestarted matches 1 run tellraw @p ["",{"text":"==Starting Animation==","bold":true,"color":"dark_green"},{"text":"\n\n"},{"text":"True","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger sdtrue"}},{"text":"\n\n"},{"text":"False","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger sdfalse"}},{"text":"\n\n\n\n\n "}]
