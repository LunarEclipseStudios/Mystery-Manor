playsound minecraft:block.note_block.pling music @s ~ ~ ~ 999999999999.0 2.0 1.0
scoreboard players set true dev_mode 0
scoreboard players set true starting_delay 1
tellraw @s {"text":"[Developer Mode Deactivated Successfully]","color":"dark_green"}
tellraw @s {"text":"[Starting Animation Set To True]","color":"green"}
tellraw @s {"text":"[Player Limit Set To 3]","color":"green"}
tellraw @s {"text":"[Team Win Detector Activated]","color":"green"}
bossbar set minecraft:devmode visible false