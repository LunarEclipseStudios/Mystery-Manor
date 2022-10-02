scoreboard players reset @s click
execute unless score true power_out matches 1 run execute unless entity @s[tag=lights_out] run scoreboard players set @s perk1 0
execute unless score true power_out matches 1 run execute unless entity @s[tag=lights_out] run scoreboard players set perk1 minutes 3
execute if score true power_out matches 1 unless entity @s[tag=lights_out] run title @a title {"text":" ","color":"red"}
execute if score true power_out matches 1 unless entity @s[tag=lights_out] run title @s subtitle {"text":"The Lights Are Already Out!","color":"dark_red"}
execute if score true power_out matches 1 unless entity @s[tag=lights_out] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 999999999.0 1 1.0
execute unless score true power_out matches 1 run execute unless entity @s[tag=lights_out] run title @a title {"text":"LIGHTS OUT","color":"dark_red"}
execute unless score true power_out matches 1 run execute unless entity @s[tag=lights_out] run playsound bret06:murderer_perk master @a ~ ~ ~ 99999 0.7 1
execute unless score true power_out matches 1 run execute unless entity @s[tag=lights_out] run summon minecraft:lightning_bolt ~ 256 ~
execute unless score true power_out matches 1 run item replace entity @s hotbar.8 with carrot_on_a_stick{CustomModelData:257,display:{Name:'[{"text":"Lights Out","italic":false,"bold":true,"color":"dark_red"}]',Lore:['[{"text":"This perk allows you to turn off the lights giving you an advantage.","italic":false,"color":"red"}]']}} 1
execute unless score true power_out matches 1 run execute unless entity @s[tag=lights_out] run function bret06:perks/murderer/lights_out/lights_out_list

effect give @s minecraft:night_vision 999999 255 true