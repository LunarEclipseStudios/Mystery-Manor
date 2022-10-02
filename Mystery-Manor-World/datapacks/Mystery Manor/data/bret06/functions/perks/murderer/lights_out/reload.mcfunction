tag @s remove lights_out
advancement grant @s only bret06:murderer/lights_out
title @a title {"text":" ","color":"red"}
scoreboard players reset @s perk1
item replace entity @s hotbar.8 with carrot_on_a_stick{CustomModelData:256,display:{Name:'[{"text":"Lights Out","italic":false,"bold":true,"color":"dark_red"}]',Lore:['[{"text":"This perk allows you to turn off the lights giving you an advantage.","italic":false,"color":"red"}]']}} 1