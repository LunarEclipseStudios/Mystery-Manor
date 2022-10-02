scoreboard players reset @s allow_click_delay
scoreboard players reset @s click
tag @s remove not_close_enough
tag @s remove loading_resources

scoreboard players set @s lobby_music 1
stopsound @s music
scoreboard players reset @s opening
tag @s add opening
playsound bret06:opening.music master @s ~ ~ ~ 1.0 1.0 1.0
clear @s carved_pumpkin