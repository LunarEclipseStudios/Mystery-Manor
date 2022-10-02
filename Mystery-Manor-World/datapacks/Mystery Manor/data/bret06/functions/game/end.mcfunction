scoreboard players reset timer overtime
scoreboard players reset buttonreload minutes

stopsound @a

tag @a remove justjoined

#game_setup
#murderer
title @a subtitle {"text":" ","color":"dark_red"}
execute unless entity @a[tag=good] run title @a title {"text":"Murderer Wins!","color":"dark_red"}
execute unless entity @a[tag=good] run execute as @r at @s run summon lightning_bolt ~ 256 ~
execute unless entity @a[tag=good] run playsound bret06:murderer_perk master @a ~ ~ ~ 99999 0.7 1
kill @e[tag=print]

#innocents
title @a subtitle {"text":" ","color":"dark_red"}
execute unless entity @a[team=murderer] run title @a title {"text":"Innocents Win!","color":"dark_green"}
execute unless entity @a[team=murderer] run playsound bret06:murderer_perk master @a ~ ~ ~ 99999 0.7 1
execute unless entity @a[team=murderer] run execute as @r at @s run summon lightning_bolt ~ 256 ~

execute if entity @a[tag=good] run playsound bret06:murderer_perk master @a ~ ~ ~ 99999 0.7 1
execute if entity @a[tag=good] run title @a title {"text":"Innocents Win!","color":"dark_green"}
execute if entity @a[tag=good] run execute as @r at @s run summon lightning_bolt ~ 256 ~

scoreboard players reset count player_count
execute as @a at @s run function bret06:perks/reset
tag @a add scores
scoreboard players set timer viewScoreTime 30
scoreboard players reset true gamestarted
scoreboard players reset timer blackout
scoreboard players reset timer get_items
tag @a remove items
scoreboard players reset timer music
function bret06:game/meeting_cooldown_over
team leave @a
function bret06:perks/murderer/lights_out/lights_on_list
tag @a remove good
tag @a remove spawned
execute as @e[tag=button] at @s run tag @s remove pressed
kill @e[tag=dead_body]
kill @e[type=item]
scoreboard players reset @a lobby_music
scoreboard players reset @a page

#pedestals
function bret06:endgame/murderer

function bret06:endgame/most_coins_check
execute as @a at @s if score @s coins matches 1.. run tag @s add mostCoins
execute as @a at @s if score @s coins matches 0 as @a if score @s[distance=1..] coins matches 0 run tag @s add mostCoins
execute as @a[tag=mostCoins,sort=random,limit=1] run tag @s add pedestaled
function bret06:endgame/last_alive
function bret06:endgame/is_hero
scoreboard players reset @a coins

#player_setup
execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1.0 2.0 1.0
execute as @a at @s run tag @s remove ingame
gamemode adventure @a
effect clear @a


gamerule doDaylightCycle false
time set midnight
weather thunder

function bret06:debug/front_door_unlock

kill @e[tag=coin]
tag @a remove hasBow
tag @a remove hadBow
scoreboard players reset @s bowshot
function bret06:game/end_area

function bret06:setup/outside_content_on

tag @s remove not_close_enough