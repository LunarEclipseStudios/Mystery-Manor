tag @s add pressed
scoreboard players set timer buttonpressed 120
execute at @e[tag=button] run summon minecraft:armor_stand ~ ~-.5 ~ {Tags:["button_counter"],Small:1b,NoGravity:1b,CustomName:'[{"text":"Cooldown: 1:00","color":"green"}]',CustomNameVisible:1b,Invisible:1b}
playsound bret06:meeting master @a ~ ~ ~ 99999 0.7 1
title @a title {"text":"MEETING CALLED!","color":"dark_red"}