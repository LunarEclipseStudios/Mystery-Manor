#game_setup
scoreboard players reset @a died
item replace entity @a armor.head with minecraft:air
tag @a remove spawned
tag @a remove black
tag @s remove justjoined
scoreboard players reset timer blackout
scoreboard players set true gamestarted 1
scoreboard players set timer get_items 10
tag @a remove items
clear @a
scoreboard players reset timer music
scoreboard players reset @s lobby_music
function bret06:game/meeting_cooldown_over
execute as @e[tag=button] at @s run tag @s add pressed
scoreboard players set timer buttonpressed 30
execute at @e[tag=button] run summon minecraft:armor_stand ~ ~-.5 ~ {Tags:["button_counter"],Small:1b,NoGravity:1b,CustomName:'[{"text":"Cooldown: 1:00","color":"green"}]',CustomNameVisible:1b,Invisible:1b}
kill @e[tag=dead_body]
clear @a

#player_setup
execute as @a at @s run tag @s add ingame
gamemode adventure @a
tag @a remove good
scoreboard players reset @a page

#timer_start
execute if score option round_length matches 0 run scoreboard players set buttonreload minutes 10
execute if score option round_length matches 0 run scoreboard players set timer buttonreload 0
execute if score option round_length matches 10 run scoreboard players set buttonreload minutes 10
execute if score option round_length matches 10 run scoreboard players set timer buttonreload 0
execute if score option round_length matches 15 run scoreboard players set buttonreload minutes 15
execute if score option round_length matches 15 run scoreboard players set timer buttonreload 0
execute if score option round_length matches 20 run scoreboard players set buttonreload minutes 20
execute if score option round_length matches 20 run scoreboard players set timer buttonreload 0

#select_roles
execute as @r[team=] at @s run team join murderer
execute if score option murderer_count matches 2.. run execute as @r[team=] at @s run team join murderer
execute if score option murderer_count matches 3 run execute as @r[team=] at @s run team join murderer
execute as @r[team=] at @s run team join detective
execute as @a[team=] at @s run team join innocent

#tell_role
title @a times 10 70 20
execute as @a[team=murderer] at @s run title @s title [{"text":"","color":"white"},{"text":"Murderer","color":"dark_red"}]
execute as @a[team=murderer] at @s run title @s subtitle {"text":"You are the Murderer kill every last innocent!","color":"red"}
execute as @a[team=detective] at @s run title @s title [{"text":""},{"text":"Detective","color":"dark_blue"}]
execute as @a[team=detective] at @s run title @s subtitle {"text":"You are the Detective defend the innocents at all costs!","color":"blue"}
execute as @a[team=innocent] at @s run title @s title {"text":"Innocent","color":"dark_green"}
execute as @a[team=innocent] at @s run title @s subtitle {"text":"You are an Innocent try to survive!","color":"green"}

clear @a
gamerule doDaylightCycle false
time set 14200
weather thunder
scoreboard players set @a coins 0
tag @a remove hasBow
tag @a remove hadBow
scoreboard players reset @s bowshot

schedule function bret06:game/tell_ally 2s 

tag @a remove lastInnocent
tag @a remove lastDetective
tag @a remove lastMurderer
tag @a remove mostCoins
tag @a remove lastAlive
tag @a remove isHero

function bret06:setup/outside_content_off

tag @a remove not_close_enough
tag @a remove opening
tag @a remove loading_resources
tag @a remove justjoined
effect clear @a glowing
time set midnight