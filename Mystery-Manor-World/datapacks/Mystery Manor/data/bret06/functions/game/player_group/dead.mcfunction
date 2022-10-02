scoreboard players reset @s died
#detective
execute if entity @s[team=detective] run summon item ~ ~ ~ {Item: {id: "minecraft:bow", Count: 1b,tag:{detect:1b}}}
execute unless entity @s[team=detective] run playsound bret06:murderer_perk master @s ~ ~ ~ 99999 0.7 1

#normal
execute unless entity @s[tag=justjoined] run summon armor_stand ~ ~ ~ {Invisible:1b,Small:1b,Tags:["dead_body"],ArmorItems:[{},{},{},{id:paper,tag:{CustomModelData:272},Count:1}],ArmorDropChances:[0F,0F,0F,0F]}
tp @e[tag=dead_body,limit=1,sort=nearest] ~ ~ ~ ~ ~
tag @s remove ingame
team leave @s
team join dead @s
tag @s remove good
title @s title {"text":"You Died!","color":"dark_red"}
title @s subtitle {"text":"You're Now Spectating.","color":"red"}

#menu
team modify murderer prefix {"text":"","italic":true,"color":"gray"}
team modify detective prefix {"text":"","italic":true,"color":"gray"}
team modify innocent prefix {"text":"","italic":true,"color":"gray"}

tellraw @s {"text":"Spectate Menu","bold":true,"color":"dark_green"}
execute if entity @a[tag=1,team=!dead] run tellraw @s ["",{"selector":"@a[tag=1]","color":"green"},{"text":" ","color":"green"},{"text":"[SPECTATE]","color":"green","clickEvent":{"action":"run_command","value":"/trigger spec1"}}]
execute if entity @a[tag=2,team=!dead] run tellraw @s ["",{"selector":"@a[tag=2]","color":"green"},{"text":" ","color":"green"},{"text":"[SPECTATE]","color":"green","clickEvent":{"action":"run_command","value":"/trigger spec2"}}]
execute if entity @a[tag=3,team=!dead] run tellraw @s ["",{"selector":"@a[tag=3]","color":"green"},{"text":" ","color":"green"},{"text":"[SPECTATE]","color":"green","clickEvent":{"action":"run_command","value":"/trigger spec3"}}]
execute if entity @a[tag=4,team=!dead] run tellraw @s ["",{"selector":"@a[tag=4]","color":"green"},{"text":" ","color":"green"},{"text":"[SPECTATE]","color":"green","clickEvent":{"action":"run_command","value":"/trigger spec4"}}]
execute if entity @a[tag=5,team=!dead] run tellraw @s ["",{"selector":"@a[tag=5]","color":"green"},{"text":" ","color":"green"},{"text":"[SPECTATE]","color":"green","clickEvent":{"action":"run_command","value":"/trigger spec5"}}]
execute if entity @a[tag=6,team=!dead] run tellraw @s ["",{"selector":"@a[tag=6]","color":"green"},{"text":" ","color":"green"},{"text":"[SPECTATE]","color":"green","clickEvent":{"action":"run_command","value":"/trigger spec6"}}]
execute if entity @a[tag=7,team=!dead] run tellraw @s ["",{"selector":"@a[tag=7]","color":"green"},{"text":" ","color":"green"},{"text":"[SPECTATE]","color":"green","clickEvent":{"action":"run_command","value":"/trigger spec7"}}]
execute if entity @a[tag=8,team=!dead] run tellraw @s ["",{"selector":"@a[tag=8]","color":"green"},{"text":" ","color":"green"},{"text":"[SPECTATE]","color":"green","clickEvent":{"action":"run_command","value":"/trigger spec8"}}]

team modify murderer prefix {"text":"","italic":true,"color":"gray"}
team modify detective prefix {"text":"","italic":true,"color":"gray"}
team modify innocent prefix {"text":"","italic":true,"color":"gray"}