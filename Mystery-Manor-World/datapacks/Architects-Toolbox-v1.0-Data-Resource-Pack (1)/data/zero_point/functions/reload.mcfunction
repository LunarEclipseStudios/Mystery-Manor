scoreboard objectives add donebb dummy
execute unless score 1 donebb matches 1 run tellraw @a ["",{"text":"Thanks For Downloading Architect's Toolbox!","bold":true,"color":"green"},{"text":"\n"},{"text":"Do ","color":"white"},{"text":"/function builder:box","bold":true,"color":"white"},{"text":" To Get Started!","color":"white"}]
execute if score 1 donebb matches 1 run tellraw @a [{"text":"Sucessfully Reloaded Architect's Toolbox!","color":"green"}]
scoreboard players set 1 donebb 1
gamerule sendCommandFeedback false
scoreboard objectives add test_world_generated dummy