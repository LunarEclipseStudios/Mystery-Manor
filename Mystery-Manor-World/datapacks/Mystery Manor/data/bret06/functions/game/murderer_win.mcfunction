#murderer
title @a subtitle {"text":" ","color":"dark_red"}
execute unless entity @a[tag=good] run title @a title {"text":"Murderer Wins!","color":"dark_red"}
execute unless entity @a[tag=good] run execute as @r at @s run summon lightning_bolt ~ 256 ~
execute unless entity @a[tag=good] run playsound bret06:murderer_perk master @a ~ ~ ~ 99999 0.7 1