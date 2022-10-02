scoreboard players reset 20tick 20tick

#gametimer
execute unless score option round_length matches 0 run execute if entity @a[tag=items] if score true gamestarted matches 1 run scoreboard players remove timer buttonreload 1

#meeting
#execute as @e[tag=button] at @s if entity @s[tag=pressed] run scoreboard players remove timer buttonpressed 1

#player_count
scoreboard players reset count player_count
execute unless score true dev_mode matches 1 as @a[tag=ready] at @s run scoreboard players add count player_count 1
execute if score true dev_mode matches 1 as @a[tag=ready] at @s run scoreboard players set count player_count 3
execute as @a at @s unless entity @s[tag=hasNumber] run function bret06:number

execute unless entity @a[tag=1] as @a run function bret06:debug/clear_numbers


#game_setup
execute as @a[advancements={bret06:murderer/lights_out=true}] at @s run advancement revoke @s only bret06:murderer/lights_out
execute as @a[advancements={bret06:murderer/fake_body=true}] at @s run advancement revoke @s only bret06:murderer/fake_body
execute as @a[advancements={bret06:detective/clue=true}] at @s run advancement revoke @s only bret06:detective/clue
execute as @a[advancements={bret06:murdered_player=true}] at @s run advancement revoke @s only bret06:murdered_player
execute as @a[advancements={bret06:killed_by_detective=true}] at @s run advancement revoke @s only bret06:killed_by_detective
execute as @a[advancements={bret06:spawn_body=true}] at @s run advancement revoke @s only bret06:spawn_body
execute if score true gamestarted matches 1 run scoreboard players remove timer get_items 1
execute as @a[tag=!items] at @s if score timer get_items matches 1..3 if score true gamestarted matches 1 run playsound block.note_block.pling master @s ~ ~ ~ 1.0 1
execute as @a[tag=!items,team=detective] at @s if score timer get_items matches 0 if score true gamestarted matches 1 run playsound minecraft:item.armor.equip_iron master @s ~ ~ ~ 2.0 1
execute as @a[tag=!items,team=murderer] at @s if score timer get_items matches 0 if score true gamestarted matches 1 run playsound minecraft:item.armor.equip_iron master @s ~ ~ ~ 2.0 1
execute as @a[tag=!items,team=innocent] at @s if score timer get_items matches 0 if score true gamestarted matches 1 run playsound block.note_block.pling master @s ~ ~ ~ 1.0 2
execute as @a[team=] at @s run clear @s[tag=!builder,tag=!black,tag=!loading_resources]

#spawn_area
execute as @a[] at @s run scoreboard players add @s spawn_area 1

#blackout
execute if score timer blackout matches 6 run function bret06:music_play
execute if entity @a[tag=black] run scoreboard players add timer blackout 1

#dead
execute as @a[team=dead] at @s run gamemode spectator @s

#perks
execute unless score true power_out matches 1 run scoreboard players remove @a[tag=lights_out] perk1 1
scoreboard players remove @a[tag=fake_body] perk2 1
#detective
scoreboard players remove @a[tag=clue] dperk1 1

#footprints
execute as @a[tag=footprints] at @s run scoreboard players add @s footprints 1
execute as @e[tag=print] at @s if block ~ ~-.1 ~ air run tp ~ ~-.1 ~

#timeprogress
execute if score timer buttonreload matches ..30 if score buttonreload minutes matches 7 run gamerule doDaylightCycle true
execute if score timer buttonreload matches ..50 if score buttonreload minutes matches 0 run weather clear

##passages
#study_bookshelf
execute if block 36 68 -101 minecraft:lever[powered=false] unless score true study_bookshelf matches 1 run function bret06:passages/study_bookshelf
execute if block 36 68 -101 minecraft:lever[powered=true] if score true study_bookshelf matches 1 run function bret06:passages/study_bookshelf_off
execute if score true study_bookshelf matches 1 run scoreboard players add timer study_bookshelf 1
execute if score timer study_bookshelf matches 1.. run playsound minecraft:block.note_block.chime master @a 36.59 68.12 -100.25 1.0 .1
execute if score timer study_bookshelf matches 15.. run function bret06:passages/study_bookshelf_off
#library_fireplace
execute if score true library_fireplace matches 1 run scoreboard players add timer library_fireplace 1
execute if score timer library_fireplace matches 1.. run playsound minecraft:block.note_block.chime master @a 12 72 -50 1.0 .1
execute if score timer library_fireplace matches 15.. run function bret06:passages/library_fireplace_off
#basement_crate
execute if score true basement_crate matches 1 run scoreboard players add timer basement_crate 1
execute if score timer basement_crate matches 1.. run playsound minecraft:block.note_block.chime master @a -3 58 -44 1.0 .1
execute if score timer basement_crate matches 15.. run function bret06:passages/basement_crate_off
#painting_passage1
execute as @e[tag=painting_passage1,type=villager,tag=active] at @s run scoreboard players add @s painting_passage1 1
execute as @e[tag=painting_passage1,type=villager,tag=active] at @s if score @s painting_passage1 matches 1.. run playsound minecraft:block.note_block.chime master @a 12.49 70.48 -83.00 1.0 .1
execute as @e[tag=painting_passage1,type=villager,tag=active] at @s if score @s painting_passage1 matches 15.. run function bret06:passages/painting_passage1_off
#lore_painting
execute if score true lore_painting matches 1 run scoreboard players add timer lore_painting 1
execute if score timer lore_painting matches 1.. run playsound minecraft:block.note_block.chime master @a -5.49 79.47 -54.00 1.0 .1
execute if score timer lore_painting matches 15.. run function bret06:passages/lore_painting_off

#coins
execute if score true gamestarted matches 1 run scoreboard players add interval coin_interval 1
execute as @e[tag=coin_point,sort=random,limit=2] at @s if score interval coin_interval matches 15.. if score true gamestarted matches 1 run function bret06:game/spawn_coin

##log_roles
execute as @a[team=murderer] at @s if score true gamestarted matches 1 run tag @s add lastMurderer
execute as @a[team=detective] at @s if score true gamestarted matches 1 run tag @s add lastDetective
execute as @a[team=innocent] at @s if score true gamestarted matches 1 run tag @s add lastInnocent
execute as @a[team=dead] at @s if score true gamestarted matches 1 run tag @s add lastInnocent

#viewScoreTime
execute if entity @a[tag=scores] run scoreboard players remove timer viewScoreTime 1

#mostCoins
function bret06:endgame/most_coins

#new_options
#murderer_count
execute as @e[tag=murderer_count] at @s run data merge entity @s {Age:-999}
execute as @e[tag=murderer_count] at @s run effect give @s resistance 2 255 true
execute as @e[tag=murderer_count] at @s run effect give @s invisibility 2 1 true
execute as @e[tag=murderer_count_model] at @s if score option murderer_count matches 1 run item replace entity @s container.0 with paper{CustomModelData:555}
execute as @e[tag=murderer_count_model] at @s if score option murderer_count matches 2 run item replace entity @s container.0 with paper{CustomModelData:556}
execute as @e[tag=murderer_count_model] at @s if score option murderer_count matches 3 run item replace entity @s container.0 with paper{CustomModelData:557}
#starting_delay
execute as @e[tag=starting_delay] at @s run data merge entity @s {Age:-999}
execute as @e[tag=starting_delay] at @s run effect give @s resistance 2 255 true
execute as @e[tag=starting_delay] at @s run effect give @s invisibility 2 1 true
execute as @e[tag=starting_delay_model] at @s if score true starting_delay matches 1 run item replace entity @s container.0 with paper{CustomModelData:558}
execute as @e[tag=starting_delay_model] at @s if score true starting_delay matches 2 run item replace entity @s container.0 with paper{CustomModelData:559}
#round_length
execute as @e[tag=round_length] at @s run data merge entity @s {Age:-999}
execute as @e[tag=round_length] at @s run effect give @s resistance 2 255 true
execute as @e[tag=round_length] at @s run effect give @s invisibility 2 1 true
execute as @e[tag=round_length_model] at @s if score option round_length matches 10 run item replace entity @s container.0 with paper{CustomModelData:560}
execute as @e[tag=round_length_model] at @s if score option round_length matches 15 run item replace entity @s container.0 with paper{CustomModelData:561}
execute as @e[tag=round_length_model] at @s if score option round_length matches 20 run item replace entity @s container.0 with paper{CustomModelData:562}
execute as @e[tag=round_length_model] at @s if score option round_length matches 0 run item replace entity @s container.0 with paper{CustomModelData:563}

#new_settings
execute as @e[tag=outside_content] at @s run effect give @s resistance 2 255 true
execute as @e[tag=outside_content] at @s run effect give @s invisibility 2 1 true

##game_start
execute if score count player_count matches 3.. run scoreboard players set true starting 1
execute unless score count player_count matches 3.. run scoreboard players set true starting 0
execute if score true starting matches 0 run scoreboard players set timer start_timer 30


execute if score true starting matches 1 run scoreboard players remove timer start_timer 1

execute if score timer start_timer matches 0 run function bret06:game/pre_start

#opening
execute as @a[tag=opening] at @s run function bret06:opening/20tick
execute as @e[tag=close_enough] at @s as @a[tag=not_close_enough,distance=..6] run function bret06:close_enough 

#loading_resources
execute as @a[tag=loading_resources] at @s run scoreboard players add @s allow_click_delay 1

#spectator_fix
execute unless score true gamestarted matches 1.. as @a[gamemode=spectator,tag=!loading_resources,tag=!opening,team=!dead,team=!detective] at @s run tp @s -7.5 65.00 -26.5 -90 0
execute unless score true gamestarted matches 1.. as @a[gamemode=spectator,tag=!loading_resources,tag=!opening,team=!dead,team=!detective] at @s run gamemode adventure @s