#innocents
title @a subtitle {"text":" ","color":"dark_red"}
execute unless entity @a[team=murderer] run title @a title {"text":"Innocents Win!","color":"dark_green"}
execute unless entity @a[team=murderer] run playsound bret06:murderer_perk master @a ~ ~ ~ 99999 0.7 1
execute unless entity @a[team=murderer] run execute as @r at @s run summon lightning_bolt ~ 256 ~

execute if entity @a[tag=good] run playsound bret06:murderer_perk master @a ~ ~ ~ 99999 0.7 1
execute if entity @a[tag=good] run title @a title {"text":"Innocents Win!","color":"dark_green"}
execute if entity @a[tag=good] run execute as @r at @s run summon lightning_bolt ~ 256 ~