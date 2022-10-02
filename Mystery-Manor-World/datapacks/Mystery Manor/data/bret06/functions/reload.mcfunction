scoreboard objectives add buttonreload dummy
scoreboard objectives add minutes dummy
scoreboard objectives add 20tick dummy
scoreboard objectives add player_count dummy
scoreboard objectives add music dummy
scoreboard objectives add perk1 dummy
scoreboard objectives add perk2 dummy
scoreboard objectives add perk3 dummy
scoreboard objectives add dperk1 dummy
scoreboard objectives add dperk2 dummy
scoreboard objectives add dperk3 dummy
scoreboard objectives add gamestarted dummy
scoreboard objectives add left minecraft.custom:minecraft.leave_game
scoreboard objectives add died deathCount
scoreboard objectives add buttonpressed dummy
scoreboard objectives add click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add get_items dummy
scoreboard objectives add lobby_music dummy
scoreboard objectives add spawn_area dummy
scoreboard objectives add blackout dummy
scoreboard objectives add fixing_power dummy
scoreboard objectives add power_out dummy
scoreboard objectives add page dummy
scoreboard objectives add overtime dummy
scoreboard objectives add track dummy
scoreboard objectives add dev_mode dummy
scoreboard objectives add footprints dummy
scoreboard objectives add bowshot minecraft.used:minecraft.bow
scoreboard objectives add lobby_music_track dummy
scoreboard players set track lobby_music_track 1
scoreboard objectives add end_music dummy
scoreboard objectives add opening dummy
scoreboard objectives add allow_click_delay dummy

scoreboard objectives add study_bookshelf dummy
scoreboard objectives add library_fireplace dummy
scoreboard objectives add basement_crate dummy
scoreboard objectives add painting_passage1 dummy
scoreboard objectives add lore_painting dummy

scoreboard objectives add coin_interval dummy
scoreboard objectives add coins dummy
scoreboard objectives add points dummy

scoreboard objectives add viewScoreTime dummy

scoreboard objectives add starting dummy
scoreboard objectives add start_timer dummy


#options
scoreboard objectives add round_length dummy
scoreboard objectives add murderer_count dummy
scoreboard objectives add starting_delay dummy
function bret06:setup/options
function bret06:setup/painting_passage_detect


#base_settings
scoreboard players set option round_length 10
scoreboard players set option murderer_count 1
scoreboard players set true starting_delay 1

#conditions
gamerule doWeatherCycle false
gamerule sendCommandFeedback false
#weather thunder
gamerule doImmediateRespawn true
gamerule doDaylightCycle false
time set midnight
gamerule fallDamage false
gamerule showDeathMessages false
team modify detective friendlyFire false
execute as @e[type=minecraft:item_frame] run data merge entity @s {Fixed:1b}
execute as @e[type=minecraft:painting] run data merge entity @s {Invulnerable:1b}
gamerule announceAdvancements false
gamerule keepInventory true
gamerule freezeDamage false
gamerule doFireTick false
difficulty peaceful

#roles
team add murderer
team add detective
team add innocent
team add dead
team add partyleader
team add player

#modify
team modify innocent nametagVisibility never
team modify murderer nametagVisibility never
team modify detective nametagVisibility never
team modify dead nametagVisibility never
team modify dead collisionRule never
team modify detective collisionRule never
team modify murderer collisionRule never
team modify innocent collisionRule never
team modify dead seeFriendlyInvisibles false
team modify dead prefix {"text":"","italic":true,"color":"gray"}
team modify murderer prefix {"text":"","italic":true,"color":"gray"}
team modify detective prefix {"text":"","italic":true,"color":"gray"}
team modify innocent prefix {"text":"","italic":true,"color":"gray"}
team modify murderer friendlyFire false
team modify partyleader prefix {"text":"[Party Leader] ","color":"dark_red"}
team modify partyleader color red
team modify player friendlyFire false
team modify player color red

#trigger_cmds
scoreboard objectives add spec1 trigger
scoreboard objectives add spec2 trigger
scoreboard objectives add spec3 trigger
scoreboard objectives add spec4 trigger
scoreboard objectives add spec5 trigger
scoreboard objectives add spec6 trigger
scoreboard objectives add spec7 trigger
scoreboard objectives add spec8 trigger

#options
scoreboard objectives add sel_round_length trigger
scoreboard objectives add s_murderer_count trigger
scoreboard objectives add s_starting_delay trigger
#round_length
scoreboard objectives add 10minutes trigger
scoreboard objectives add 15minutes trigger
scoreboard objectives add 20minutes trigger
scoreboard objectives add no_timer trigger
#murderer_count
scoreboard objectives add 1murderer trigger
scoreboard objectives add 2murderer trigger
scoreboard objectives add 3murderer trigger
#starting_delay
scoreboard objectives add sdtrue trigger
scoreboard objectives add sdfalse trigger

#bossbar
bossbar add devmode {"text":"Developer Mode"}
bossbar set minecraft:devmode color blue
bossbar set minecraft:devmode value 100

forceload add -50 210 -59 202

#map_setup
execute as @e[type=armor_stand] at @s run data merge entity @s {DisabledSlots:4144959}
execute as @e[type=item_frame] at @s run data merge entity @s {Fixed:1b}
execute as @e[type=glow_item_frame] at @s run data merge entity @s {Fixed:1b}