advancement revoke @a from minecraft:adventure/root
advancement revoke @a from minecraft:story/root
advancement revoke @a from minecraft:husbandry/root
stopsound @a music minecraft:music.overworld.old_growth_taiga
stopsound @a music minecraft:music.overworld.jungle_and_forest

#20tick
scoreboard players add 20tick 20tick 1
execute if score 20tick 20tick matches 20.. run function bret06:20tick

#gametimer
execute if score timer buttonreload matches ..-1 run function bret06:remove_minute
execute if score timer buttonreload matches ..0 if score buttonreload minutes matches ..0 run function bret06:game/end
#display

#role_tick
execute as @a[team=murderer] at @s run function bret06:role_tick/murderer
execute as @a[team=detective] at @s run function bret06:role_tick/detective
execute as @a[team=innocent] at @s run function bret06:role_tick/innocent
execute as @a[team=dead] at @s run function bret06:role_tick/dead

#music
execute if score number track matches 3 run scoreboard players reset number track
execute if score true gamestarted matches 1 run scoreboard players add timer music 1
execute unless score number track matches 1 if score timer music matches 5000.. run function bret06:music_play
execute if score number track matches 1 if score timer music matches 2450.. run function bret06:music_play
execute if score number track matches 2 if score timer music matches 2400.. run function bret06:music_play

#meeting
#function bret06:button_counter
#execute as @e[tag=button,tag=!pressed] at @s if block ~ ~ ~ minecraft:acacia_button[powered=true] run function bret06:game/meeting
#execute as @e[tag=button] at @s if score timer buttonpressed matches ..-1 run function bret06:game/meeting_cooldown_over

#left_game
execute as @a at @s if score @s left matches 1.. run function bret06:player_left
#execute as @a at @s if entity @s[team=] if score true gamestarted matches 1 run function bret06:player_left
execute as @a at @s if score @s left matches 1.. unless score true gamestarted matches 1 run clear @s
execute as @a at @s if score @s left matches 1.. unless score true gamestarted matches 1 run team leave @s
execute as @a at @s if score @s left matches 1.. unless score true gamestarted matches 1 run tp @s -43.52 65.00 -4.49
execute as @a at @s if score @s left matches 1.. unless score true gamestarted matches 1 run scoreboard players reset @s lobby_music
execute as @a at @s if score @s left matches 1.. unless score true gamestarted matches 1 run scoreboard players reset @a left

#new_death_system
#execute as @e[tag=safe_spawn] at @s unless score true gamestarted matches 1 as @a[distance=20..,tag=!black,tag=!builder,tag=!scores,tag=!options,tag=!opening,tag=!not_close_enough,tag=!loading_resources] run kill @s
execute as @a[tag=!justjoined] at @s if score true gamestarted matches 1 if score @s died matches 1.. run function bret06:game/player_group/dead
execute as @a at @s if score true gamestarted matches 1 run spawnpoint @s ~ ~ ~ ~

#cam_death_system
#execute as @a[team=detective] at @s if score true gamestarted matches 1 if score @s died matches 1.. run title @a title {"text":"Detective Killed!","color":"dark_red"}
#execute as @a[team=detective] at @s if score true gamestarted matches 1 if score @s died matches 1.. run playsound bret06:murderer_perk master @a ~ ~ ~ 99999 0.7 1
#execute as @a at @s if score true gamestarted matches 1 if score @s died matches 1.. run function bret06:game/player_group/dead
#execute as @a at @s if score true gamestarted matches 1 run spawnpoint @s ~ ~ ~ ~
#pages
#execute as @a[team=dead] at @s if score @s page matches 1 run function bret06:camera/page1
#execute as @a[team=dead] at @s if score @s page matches 2 run function bret06:camera/page2
#execute as @a[team=dead] at @s if score @s page matches 3 run function bret06:camera/page3
#cameras
#execute as @e[team=dead] at @s run function bret06:dead_slots
#execute as @e[team=dead] at @s unless score @s page matches 1.. run scoreboard players set @s page 1
#execute as @e[team=dead,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:272}}}] at @s if score @s click matches 1.. run function bret06:camera/next_page
#execute as @e[team=dead,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:273}}}] at @s if score @s click matches 1.. run function bret06:camera/back_page
#cam_detect
#execute as @e[tag=cam1,limit=1] at @s run tp @a[nbt={SelectedItem:{id:"minecraft:paper",tag:{cam:1}}}] ~ ~ ~
#execute as @e[tag=cam2,limit=1] at @s run tp @a[nbt={SelectedItem:{id:"minecraft:paper",tag:{cam:2}}}] ~ ~ ~
#execute as @e[tag=cam3,limit=1] at @s run tp @a[nbt={SelectedItem:{id:"minecraft:paper",tag:{cam:3}}}] ~ ~ ~
#execute as @e[tag=cam4,limit=1] at @s run tp @a[nbt={SelectedItem:{id:"minecraft:paper",tag:{cam:4}}}] ~ ~ ~
#execute as @e[tag=cam5,limit=1] at @s run tp @a[nbt={SelectedItem:{id:"minecraft:paper",tag:{cam:5}}}] ~ ~ ~
#execute as @e[tag=cam6,limit=1] at @s run tp @a[nbt={SelectedItem:{id:"minecraft:paper",tag:{cam:6}}}] ~ ~ ~
#execute as @e[tag=cam7,limit=1] at @s run tp @a[nbt={SelectedItem:{id:"minecraft:paper",tag:{cam:7}}}] ~ ~ ~
#execute as @e[tag=cam8,limit=1] at @s run tp @a[nbt={SelectedItem:{id:"minecraft:paper",tag:{cam:8}}}] ~ ~ ~

#dead_old
#execute as @a[team=detective] at @s if score @s died matches 1.. run title @a title {"text":"Detective Killed!","color":"dark_red"}
#execute as @a[team=detective] at @s if score @s died matches 1.. run playsound bret06:murderer_perk master @a ~ ~ ~ 99999 0.7 1
#execute as @a[team=dead] at @s run effect give @s minecraft:invisibility 1 255 true
#execute as @a[team=dead] at @s unless entity @a[team=!dead,distance=..1.5] run spectate @r[team=!dead]
#execute as @a at @s if score @s died matches 1.. run function bret06:game/player_group/dead_old

#game_setup
stopsound @a music minecraft:music.game
stopsound @a music minecraft:music.creative
effect give @a minecraft:weakness 999999 255 true
execute as @a at @s run attribute @s minecraft:generic.max_health base set 1
execute as @a at @s run attribute @s minecraft:generic.attack_speed base set 9999
execute as @a at @s unless score true gamestarted matches 1 run spawnpoint @a -8 65 -27
execute as @a[tag=!here] at @s run function bret06:first_join


#item
execute as @a at @s unless entity @s[tag=items] if score true gamestarted matches 1 if score timer get_items matches 10 run title @s actionbar ["",{"text":"概榃"},{"text":"Game Start \u6981 ","color":"yellow"},{"text":"▌▌▌▌▌▌▌▌▌▌","color":"yellow"},{"text":" ","color":"dark_gray"},{"score":{"name":"timer","objective":"get_items"},"color":"white"}]
execute as @a at @s unless entity @s[tag=items] if score true gamestarted matches 1 if score timer get_items matches 9 run title @s actionbar ["",{"text":"榄榅"},{"text":"Game Start \u6981 ","color":"yellow"},{"text":"▌▌▌▌▌▌▌▌▌","color":"yellow"},{"text":"▌ ","color":"dark_gray"},{"score":{"name":"timer","objective":"get_items"},"color":"white"}]
execute as @a at @s unless entity @s[tag=items] if score true gamestarted matches 1 if score timer get_items matches 8 run title @s actionbar ["",{"text":"\u6986榅"},{"text":"Game Start \u6981 ","color":"yellow"},{"text":"▌▌▌▌▌▌▌▌","color":"yellow"},{"text":"▌▌ ","color":"dark_gray"},{"score":{"name":"timer","objective":"get_items"},"color":"white"}]
execute as @a at @s unless entity @s[tag=items] if score true gamestarted matches 1 if score timer get_items matches 7 run title @s actionbar ["",{"text":"\u6987榅"},{"text":"Game Start \u6981 ","color":"yellow"},{"text":"▌▌▌▌▌▌▌","color":"yellow"},{"text":"▌▌▌ ","color":"dark_gray"},{"score":{"name":"timer","objective":"get_items"},"color":"white"}]
execute as @a at @s unless entity @s[tag=items] if score true gamestarted matches 1 if score timer get_items matches 6 run title @s actionbar ["",{"text":"\u6988榅"},{"text":"Game Start \u6981 ","color":"yellow"},{"text":"▌▌▌▌▌▌","color":"yellow"},{"text":"▌▌▌▌ ","color":"dark_gray"},{"score":{"name":"timer","objective":"get_items"},"color":"white"}]
execute as @a at @s unless entity @s[tag=items] if score true gamestarted matches 1 if score timer get_items matches 5 run title @s actionbar ["",{"text":"\u6989榅"},{"text":"Game Start \u6981 ","color":"yellow"},{"text":"▌▌▌▌▌","color":"yellow"},{"text":"▌▌▌▌▌ ","color":"dark_gray"},{"score":{"name":"timer","objective":"get_items"},"color":"white"}]
execute as @a at @s unless entity @s[tag=items] if score true gamestarted matches 1 if score timer get_items matches 4 run title @s actionbar ["",{"text":"\u6990榅"},{"text":"Game Start \u6981 ","color":"yellow"},{"text":"▌▌▌▌","color":"yellow"},{"text":"▌▌▌▌▌▌ ","color":"dark_gray"},{"score":{"name":"timer","objective":"get_items"},"color":"white"}]
execute as @a at @s unless entity @s[tag=items] if score true gamestarted matches 1 if score timer get_items matches 3 run title @s actionbar ["",{"text":"\u6991榅"},{"text":"Game Start \u6981 ","color":"yellow"},{"text":"▌▌▌","color":"red"},{"text":"▌▌▌▌▌▌▌ ","color":"dark_gray"},{"score":{"name":"timer","objective":"get_items"},"color":"white"}]
execute as @a at @s unless entity @s[tag=items] if score true gamestarted matches 1 if score timer get_items matches 2 run title @s actionbar ["",{"text":"\u6992榅"},{"text":"Game Start \u6981 ","color":"yellow"},{"text":"▌▌","color":"red"},{"text":"▌▌▌▌▌▌▌▌ ","color":"dark_gray"},{"score":{"name":"timer","objective":"get_items"},"color":"white"}]
execute as @a at @s unless entity @s[tag=items] if score true gamestarted matches 1 if score timer get_items matches 1 run title @s actionbar ["",{"text":"\u6993榅"},{"text":"Game Start \u6981 ","color":"yellow"},{"text":"▌","color":"red"},{"text":"▌▌▌▌▌▌▌▌▌ ","color":"dark_gray"},{"score":{"name":"timer","objective":"get_items"},"color":"white"}]

execute unless entity @a[tag=items] if score timer get_items matches ..0 run function bret06:perks/starting_cooldown
execute if score timer get_items matches ..0 run tag @a add items
execute as @e[type=item,nbt={Item: {id: "minecraft:iron_sword", Count: 1b,tag:{Knife:1b}}}] at @s run data merge entity @s {PickupDelay:100b}
execute as @e[type=item,nbt={Item: {id: "minecraft:paper", Count: 1b,tag:{CustomModelData:256}}}] at @s run data merge entity @s {PickupDelay:100b}
#detective
execute as @e[type=item,nbt={Item: {id: "minecraft:bow", Count: 1b,tag:{detect:1b}}}] at @s if entity @e[team=innocent,distance=..1.5] run function bret06:items/get_bow
kill @e[type=item,nbt=!{Item: {id: "minecraft:bow", Count: 1b,tag:{detect:1b}}}]
execute as @e[type=item,nbt={Item: {id: "minecraft:bow", Count: 1b,tag:{detect:1b}}}] at @s run data merge entity @s {PickupDelay:100b}
execute as @e[type=arrow] at @s run data merge entity @s {damage: 200d}
execute as @e[type=arrow] at @s if entity @s[nbt={inGround:1b}] run kill @s
#teamless
execute unless score true gamestarted matches 1 as @a[team=,tag=!builder,tag=!loading_resources,tag=!opening] at @s run function bret06:teamless_slots
execute unless score true gamestarted matches 1 as @a[tag=!items,tag=!builder,tag=!loading_resources,tag=!opening] at @s run function bret06:teamless_slots

#who_won
execute unless score true dev_mode matches 1 run execute if score true gamestarted matches 1 unless entity @a[tag=good] run function bret06:game/end
execute unless score true dev_mode matches 1 run execute if score true gamestarted matches 1 unless entity @a[team=murderer] run function bret06:game/end

#execute if score true gamestarted matches 1 unless entity @a[tag=good] run scoreboard players add timer overtime 1
#execute if score true gamestarted matches 1 unless entity @a[team=murderer] run scoreboard players add timer overtime 1

#execute if score timer overtime matches 1 unless entity @a[tag=good] run function bret06:game/murderer_win
#execute if score timer overtime matches 1 unless entity @a[team=murderer] run function bret06:game/innocent_win

#execute if score timer overtime matches 100.. unless entity @a[tag=good] run function bret06:game/end
#execute if score timer overtime matches 100.. unless entity @a[team=murderer] run function bret06:game/end

#game_start
#execute if block -44 66 -8 minecraft:stone_button[powered=true] run function bret06:game/pre_start

#spawn_area
execute if score true gamestarted matches 1 run execute as @a[tag=!spawned] at @s if score @s spawn_area matches 1 run function bret06:spawns/1
execute if score true gamestarted matches 1 run execute as @a[tag=!spawned] at @s if score @s spawn_area matches 2 run function bret06:spawns/2
execute if score true gamestarted matches 1 run execute as @a[tag=!spawned] at @s if score @s spawn_area matches 3 run function bret06:spawns/3
execute if score true gamestarted matches 1 run execute as @a[tag=!spawned] at @s if score @s spawn_area matches 4 run function bret06:spawns/4
execute if score true gamestarted matches 1 run execute as @a[tag=!spawned] at @s if score @s spawn_area matches 5 run function bret06:spawns/5
execute if score true gamestarted matches 1 run execute as @a[tag=!spawned] at @s if score @s spawn_area matches 6 run function bret06:spawns/6
execute if score true gamestarted matches 1 run execute as @a[tag=!spawned] at @s if score @s spawn_area matches 7 run function bret06:spawns/7
execute if score true gamestarted matches 1 run execute as @a[tag=!spawned] at @s if score @s spawn_area matches 8 run function bret06:spawns/8
execute as @a if predicate bret06:randomize run scoreboard players add @s spawn_area 1
execute as @a if predicate bret06:randomize run scoreboard players add @s spawn_area 2
execute as @a at @s if score @s spawn_area matches 9.. run scoreboard players set @s spawn_area 1

#lobby
execute unless score true gamestarted matches 1 run scoreboard players add @a lobby_music 1
execute as @a[tag=!loading_resources] at @s if score @s lobby_music matches 1 run function bret06:lobby_music
execute as @a[tag=!loading_resources] at @s if score @s lobby_music_track matches 1 if score @s lobby_music matches 2560.. run scoreboard players reset @s lobby_music

execute as @a[tag=!loading_resources] at @s if score @s lobby_music_track matches 2 if score @s lobby_music matches 7800.. run scoreboard players reset @s lobby_music

execute as @a[tag=!loading_resources] at @s if score @s lobby_music_track matches 3.. run scoreboard players set @s lobby_music_track 1 

#blackout
execute if score timer blackout matches 8.. run function bret06:game/start

#power_on
execute as @a at @s if score true power_out matches 1 if predicate bret06:looking_at_switch_box if predicate bret06:crouch if entity @e[tag=switch_box,distance=..3] run scoreboard players add @s fixing_power 1
execute as @a at @s unless score @s fixing_power matches 1.. if score true power_out matches 1 run execute as @e[tag=switch_box] at @s run data merge entity @s {Item:{id:"minecraft:paper",Count:1b,tag:{CustomModelData:320,display:{Name:'[{"text":"[Crouch To Fix]","italic":false,"color":"green"}]'}}}}
execute unless score true power_out matches 1 run execute as @e[tag=switch_box] at @s run data merge entity @s {Item:{id:"minecraft:paper",Count:1b,tag:{CustomModelData:320,display:{Name:'[{"text":"[Fuse Box]","italic":false,"color":"green"}]'}}}}
execute as @a at @s if score @s fixing_power matches 1.. run execute as @e[tag=switch_box,tag=!fixing] at @s run data merge entity @e[tag=switch_box,limit=1] {Item:{id:"minecraft:paper",Count:1b,tag:{CustomModelData:321,display:{Name:'[{"text":"[Fixing...]","italic":false,"color":"green"}]'}}}}
execute as @e[tag=switch_box] at @s run scoreboard players reset @a[distance=3..] fixing_power
execute unless score true power_out matches 1 run scoreboard players reset @a fixing_power
execute as @a at @s unless predicate bret06:crouch run scoreboard players reset @s fixing_power
execute as @a at @s if score @s fixing_power matches 302.. if score true power_out matches 1 run function bret06:perks/murderer/lights_out/fix

#progress_bar
function bret06:dead_ui/power_fix
execute as @a at @s if score @s fixing_power matches 1..60 run title @s actionbar [{"text":"楴極"},{"text":"⬜⬜⬜⬜⬜"}]
execute as @a at @s if score @s fixing_power matches 60..120 run title @s actionbar [{"text":"楴極"},{"text":"⬛⬜⬜⬜⬜"}]
execute as @a at @s if score @s fixing_power matches 120..180 run title @s actionbar [{"text":"楴極"},{"text":"⬛⬛⬜⬜⬜"}]
execute as @a at @s if score @s fixing_power matches 180..240 run title @s actionbar [{"text":"楴極"},{"text":"⬛⬛⬛⬜⬜"}]
execute as @a at @s if score @s fixing_power matches 240..300 run title @s actionbar [{"text":"楴極"},{"text":"⬛⬛⬛⬛⬜"}]
execute as @a at @s if score @s fixing_power matches 300.. run title @s actionbar [{"text":"楴極"},{"text":"⬛⬛⬛⬛⬛"}]

execute as @a at @s if score @s fixing_power matches 60 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute as @a at @s if score @s fixing_power matches 120 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.2
execute as @a at @s if score @s fixing_power matches 180 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.4
execute as @a at @s if score @s fixing_power matches 240 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.6

#options
#execute if block -42 66 -8 minecraft:stone_button[powered=true] run function bret06:options/settings
#execute as @a[tag=1] at @s if score @s sel_round_length matches 1.. run function bret06:options/round_length/options
#execute as @a[tag=1] at @s if score @s s_murderer_count matches 1.. run function bret06:options/murderer_count/options
#execute as @a[tag=1] at @s if score @s s_starting_delay matches 1.. run function bret06:options/starting_delay/options
#round_length
execute as @a at @s if score @s 10minutes matches 1.. run function bret06:options/round_length/10min
execute as @a at @s if score @s 15minutes matches 1.. run function bret06:options/round_length/15min
execute as @a at @s if score @s 20minutes matches 1.. run function bret06:options/round_length/20min
execute as @a at @s if score @s no_timer matches 1.. run function bret06:options/round_length/no_timer
#murderer_count
execute as @a at @s if score @s 1murderer matches 1.. run function bret06:options/murderer_count/1
execute as @a at @s if score @s 2murderer matches 1.. run function bret06:options/murderer_count/2
execute as @a at @s if score @s 3murderer matches 1.. run function bret06:options/murderer_count/3
#murderer_count
execute as @a at @s if score @s sdtrue matches 1.. run function bret06:options/starting_delay/true
execute as @a at @s if score @s sdfalse matches 1.. run function bret06:options/starting_delay/false

#triggers
#scoreboard players enable @a sel_round_length
#scoreboard players enable @a s_murderer_count
#scoreboard players enable @a s_starting_delay
#round_length
#scoreboard players enable @a 10minutes
#scoreboard players enable @a 15minutes
#scoreboard players enable @a 20minutes
#scoreboard players enable @a no_timer
#murderer_count
#scoreboard players enable @a 1murderer
#scoreboard players enable @a 2murderer
#scoreboard players enable @a 3murderer
#starting_delay
#scoreboard players enable @a sdtrue
#scoreboard players enable @a sdfalse

#credits
#execute if block -46 66 -8 minecraft:stone_button[powered=true] run function bret06:game/credits


#corner
#execute as @a[tag=footprints,y_rotation=30..60] at @s unless block ~ ~-.1 ~ air unless entity @e[tag=print,distance=..1] run summon minecraft:item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["print"],Fixed:1b,Item:{id:"minecraft:air",Count:1b,tag:{CustomModelData:352}},ItemRotation:1}
#execute as @a[tag=footprints,y_rotation=120..150] at @s unless block ~ ~-.1 ~ air unless entity @e[tag=print,distance=..1] run summon minecraft:item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["print"],Fixed:1b,Item:{id:"minecraft:air",Count:1b,tag:{CustomModelData:352}},ItemRotation:3}
#execute as @a[tag=footprints,y_rotation=-150..-120] at @s unless block ~ ~-.1 ~ air unless entity @e[tag=print,distance=..1] run summon minecraft:item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["print"],Fixed:1b,Item:{id:"minecraft:air",Count:1b,tag:{CustomModelData:352}},ItemRotation:5}
#execute as @a[tag=footprints,y_rotation=-60..-30] at @s unless block ~ ~-.1 ~ air unless entity @e[tag=print,distance=..1] run summon minecraft:item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["print"],Fixed:1b,Item:{id:"minecraft:air",Count:1b,tag:{CustomModelData:352}},ItemRotation:7}

#execute as @a[tag=footprints,y_rotation=60..120] at @s unless block ~ ~-.1 ~ air unless entity @e[tag=print,distance=..1] run summon minecraft:item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["print"],Fixed:1b,Item:{id:"minecraft:air",Count:1b,tag:{CustomModelData:352}},ItemRotation:2}
#execute as @a[tag=footprints,y_rotation=150..-150] at @s unless block ~ ~-.1 ~ air unless entity @e[tag=print,distance=..1] run summon minecraft:item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["print"],Fixed:1b,Item:{id:"minecraft:air",Count:1b,tag:{CustomModelData:352}},ItemRotation:4}
#execute as @a[tag=footprints,y_rotation=-120..-60] at @s unless block ~ ~-.1 ~ air unless entity @e[tag=print,distance=..1] run summon minecraft:item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["print"],Fixed:1b,Item:{id:"minecraft:air",Count:1b,tag:{CustomModelData:352}},ItemRotation:6}
#execute as @a[tag=footprints,y_rotation=-30..30] at @s unless block ~ ~-.1 ~ air unless entity @e[tag=print,distance=..1] run summon minecraft:item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["print"],Fixed:1b,Item:{id:"minecraft:air",Count:1b,tag:{CustomModelData:352}},ItemRotation:8}

##passages
#study_bookshelf
execute unless score true study_bookshelf matches 1 if block 21 69 -99 minecraft:oak_button[powered=true] run setblock 36 68 -101 minecraft:lever[powered=false,face=floor]
#library_fireplace
execute unless score true library_fireplace matches 1 if block 12 72 -50 minecraft:dark_oak_button[powered=true] run function bret06:passages/library_fireplace
execute unless score true library_fireplace matches 1 if block 12 59 -49 minecraft:oak_button[powered=true] run function bret06:passages/library_fireplace
#basement_crate
execute unless score true basement_crate matches 1 if block 0 59 -45 minecraft:oak_button[powered=true] run function bret06:passages/basement_crate
execute unless score true basement_crate matches 1 if block -3 58 -45 minecraft:stone_button[powered=true] run function bret06:passages/basement_crate
#painting_passage1
execute as @e[tag=painting_passage1] at @s run data merge entity @s {Age:-999}
execute as @e[tag=painting_passage1] at @s run effect give @s resistance 2 255 true
execute as @e[tag=painting_passage1] at @s run effect give @s invisibility 1 1 true
#lore_painting
execute unless score true lore_painting matches 1 if block -4 75 -60 minecraft:dark_oak_button[powered=true] run function bret06:passages/lore_painting



##coins
execute as @e[tag=coin] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=coin] at @s if entity @e[type=minecraft:player,distance=..1,team=!dead] run function bret06:game/collect_coin

execute as @e[type=arrow] at @s if entity @e[tag=coin,distance=..1.5] run kill @e[tag=coin,sort=nearest]
#oneshot_bow
execute as @a[team=!detective,team=!dead,team=!,tag=!hasBow,tag=!hadBow] at @s if score true gamestarted matches 1 if score @s coins matches 10.. run function bret06:game/innocent_oneshot
execute as @a[tag=hasBow] at @s run item replace entity @s hotbar.1 with bow
execute as @a[tag=hasBow] at @s run item replace entity @s inventory.26 with arrow
execute as @a[tag=hasBow] at @s if score @s bowshot matches 1.. run function bret06:game/innocent_oneshot_remove

#viewScoreTime
execute if score timer viewScoreTime matches ..0 run function bret06:game/back_to_spawn
execute if score timer viewScoreTime matches 30 run function bret06:game/end_area
execute as @e[tag=end_force] at @s if score timer viewScoreTime matches 1..30 as @a[tag=!builder,tag=!loading_resources,tag=!opening,tag=!not_close_enough,distance=20..] run effect give @s minecraft:blindness 2 1 true
execute as @e[tag=end_force] at @s if score timer viewScoreTime matches 1..30 as @a[tag=!builder,tag=!loading_resources,tag=!opening,tag=!not_close_enough,distance=20..] run tp @s -52.50 67.00 207.5 90 0

#lastAlive
function bret06:endgame/last_alive_check

#partyleader
execute as @a[tag=1] at @s unless entity @a[tag=black] unless score true gamestarted matches 1 run team join partyleader
execute as @a[team=partyleader,tag=!1] unless entity @a[tag=black] at @s run team leave @s

execute as @a[team=,tag=!1] at @s unless entity @a[tag=black] unless score true gamestarted matches 1 run team join player
execute as @a[team=player] if entity @a[tag=black] at @s run team leave @s


##new_options
#exit
execute as @e[tag=settings_entrance] at @s run effect give @a[distance=..0.3] minecraft:blindness 2 1 true
execute as @e[tag=settings_entrance] at @s run tag @a[distance=..0.3] remove options
execute as @e[tag=settings_entrance] at @s run tp @a[distance=..0.3] -7.5 65.00 -26.5 -90 0

#ready_up

execute as @e[tag=ready_area_check] at @s unless score true gamestarted matches 1.. as @a[distance=..4] run function bret06:game/readyup
execute as @e[tag=ready_area_check] at @s unless score true gamestarted matches 1.. as @a[distance=4..] run tag @s remove ready

#opening
execute as @a[tag=opening] at @s run function bret06:opening/tick
execute as @a[tag=not_close_enough] at @s run title @s actionbar [{"text":"[OBJECTIVE] ","color":"red"},{"text":"Approach Mystery Manor...","color":"white"}]
execute as @a[tag=not_close_enough] at @s run effect give @s jump_boost 1 150 true
execute as @a[tag=not_close_enough] at @s if predicate bret06:sprinting run effect give @s slowness 1 1 true

#loading_resources
execute as @a[tag=loading_resources] at @s run function bret06:opening/loading_resources_inven
execute as @a[tag=loading_resources] at @s if score @s allow_click_delay matches 14.. run title @s actionbar "Right Click To Start"
execute as @a[tag=!opening,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:274}}}] at @s if score @s click matches 1.. run function bret06:opening/start
