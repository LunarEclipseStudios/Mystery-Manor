scoreboard players reset @s died
execute if entity @s[team=detective] run summon item ~ ~ ~ {Item: {id: "minecraft:bow", Count: 1b,tag:{detect:1b}}}
summon armor_stand ~ ~ ~ {Invisible:1b,Small:1b,Tags:["dead_body"],ArmorItems:[{},{},{},{id:paper,tag:{CustomModelData:272},Count:1}],ArmorDropChances:[0F,0F,0F,0F]}
tp @e[tag=dead_body,limit=1,sort=nearest] ~ ~ ~ ~ ~
advancement revoke @s only bret06:spawn_body
gamemode spectator @s
tag @s remove ingame
team leave @s
team join dead @s
spectate @r
tag @s remove good
title @s title {"text":"You Died!","color":"dark_red"}
title @s subtitle {"text":"You're Now Spectating.","color":"red"}
execute unless entity @s[team=detective] run playsound bret06:murderer_perk master @s ~ ~ ~ 99999 0.7 1