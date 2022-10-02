
kill @s
clear @s
scoreboard players reset @s lobby_music
tag @s remove 1
tag @s remove 2
tag @s remove 3
tag @s remove 4
tag @s remove 5
tag @s remove 6
tag @s remove 7
tag @s remove 8
tag @s remove 9
tag @s remove 10
tag @s remove 11
tag @s remove 12
execute unless score timer viewScoreTime matches 1..30 run tag @a remove scores

tag @s remove hasNumber
effect clear @s
team leave @s
tag @s add justjoined

execute if score true gamestarted matches 1 run function bret06:game/player_group/dead