playsound minecraft:block.note_block.pling music @s ~ ~ ~ 999999999999.0 2.0 1.0
scoreboard players set true dev_mode 1
scoreboard players set true starting_delay 2
tellraw @s {"text":"[Developer Mode Activated Successfully]","color":"dark_green"}
tellraw @s {"text":"[Starting Animation Set To False]","color":"green"}
tellraw @s {"text":"[Player Limit Set To 1]","color":"green"}
tellraw @s {"text":"[Team Win Detector Deactivated]","color":"green"}
bossbar set minecraft:devmode players @s