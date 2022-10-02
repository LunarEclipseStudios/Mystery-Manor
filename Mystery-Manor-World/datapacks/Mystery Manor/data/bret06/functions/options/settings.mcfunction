#setblock -42 66 -8 minecraft:air
#setblock -42 66 -8 minecraft:stone_button[face=wall,facing=south]

advancement revoke @a only bret06:spawn_buttons/settings
execute if entity @s[tag=1] run playsound block.note_block.pling master @a[tag=1] ~ ~ ~ 99999 2
execute if entity @s[tag=1] run effect give @a[tag=1] minecraft:blindness 2 1 true
execute if entity @s[tag=1] run tp @a[tag=1] -71.5 38.00 18.5 180 0
execute if entity @s[tag=1] run tag @a[tag=1] add options

