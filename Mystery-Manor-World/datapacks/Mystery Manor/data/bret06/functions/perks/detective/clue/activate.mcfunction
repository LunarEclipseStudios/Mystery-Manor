scoreboard players reset @s click
execute unless entity @s[tag=clue] run scoreboard players set @s dperk1 0
execute unless entity @s[tag=clue] run scoreboard players set dperk1 minutes 10000
execute unless entity @s[tag=clue] run execute as @e[tag=print] at @s run item replace entity @s container.0 with minecraft:paper{CustomModelData:352}
execute unless entity @s[tag=clue] run playsound bret06:murderer_perk master @s ~ ~ ~ 99999 0.7 1
item replace entity @s hotbar.8 with carrot_on_a_stick{CustomModelData:261,display:{Name:'[{"text":"Clue","italic":false,"bold":true,"color":"dark_blue"}]',Lore:['[{"text":"This perk allows you to see the murderer\'s most recent footprints.","italic":false,"color":"blue"}]']}} 1
execute unless entity @s[tag=clue] run tag @s add clue