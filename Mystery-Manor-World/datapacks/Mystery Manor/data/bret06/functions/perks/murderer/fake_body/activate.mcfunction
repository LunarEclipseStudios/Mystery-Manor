scoreboard players reset @s click
execute unless entity @s[tag=fake_body] run scoreboard players set @s perk2 45
execute unless entity @s[tag=fake_body] run scoreboard players set perk2 minutes 0
execute unless entity @s[tag=fake_body] run effect give @s speed 3 0 true
#execute unless entity @s[tag=fake_body] run summon armor_stand ~ ~ ~ {Invisible:1b,Small:1b,Tags:["dead_body"],ArmorItems:[{},{},{},{id:paper,tag:{CustomModelData:272},Count:1}],ArmorDropChances:[0F,0F,0F,0F]}
#execute unless entity @s[tag=fake_body] run tp @e[tag=dead_body,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute unless entity @s[tag=fake_body] run playsound bret06:murderer_perk master @s ~ ~ ~ 99999 0.7 1
item replace entity @s hotbar.7 with carrot_on_a_stick{CustomModelData:259,display:{Name:'[{"text":"Dash","italic":false,"bold":true,"color":"dark_red"}]',Lore:['[{"text":"This perk gives you a small speed boost.","italic":false,"color":"red"}]']}} 1
execute unless entity @s[tag=fake_body] run tag @s add fake_body