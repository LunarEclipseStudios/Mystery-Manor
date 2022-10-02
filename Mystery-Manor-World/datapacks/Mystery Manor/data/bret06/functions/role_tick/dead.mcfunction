#new_death_system
effect give @s minecraft:invisibility 1 255 true
execute unless entity @a[team=!dead,distance=..1.5] run spectate @r[team=!dead]
#spectate
scoreboard players enable @s spec1
scoreboard players enable @s spec2
scoreboard players enable @s spec3
scoreboard players enable @s spec4
scoreboard players enable @s spec5
scoreboard players enable @s spec6
scoreboard players enable @s spec7
scoreboard players enable @s spec8


execute if score @s spec1 matches 1.. run spectate @a[tag=1,limit=1]
execute if score @s spec1 matches 1.. run playsound minecraft:block.note_block.pling music @s ~ ~ ~ 999999999999.0 2.0 1.0
execute if score @s spec1 matches 1.. run scoreboard players reset @s spec1

execute if score @s spec2 matches 1.. run spectate @a[tag=2,limit=1]
execute if score @s spec2 matches 1.. run playsound minecraft:block.note_block.pling music @s ~ ~ ~ 999999999999.0 2.0 1.0
execute if score @s spec2 matches 1.. run scoreboard players reset @s spec2

execute if score @s spec3 matches 1.. run spectate @a[tag=3,limit=1]
execute if score @s spec3 matches 1.. run playsound minecraft:block.note_block.pling music @s ~ ~ ~ 999999999999.0 2.0 1.0
execute if score @s spec3 matches 1.. run scoreboard players reset @s spec3

execute if score @s spec4 matches 1.. run spectate @a[tag=4,limit=1]
execute if score @s spec4 matches 1.. run playsound minecraft:block.note_block.pling music @s ~ ~ ~ 999999999999.0 2.0 1.0
execute if score @s spec4 matches 1.. run scoreboard players reset @s spec4

execute if score @s spec5 matches 1.. run spectate @a[tag=5,limit=1]
execute if score @s spec5 matches 1.. run playsound minecraft:block.note_block.pling music @s ~ ~ ~ 999999999999.0 2.0 1.0
execute if score @s spec5 matches 1.. run scoreboard players reset @s spec5

execute if score @s spec6 matches 1.. run spectate @a[tag=6,limit=1]
execute if score @s spec6 matches 1.. run playsound minecraft:block.note_block.pling music @s ~ ~ ~ 999999999999.0 2.0 1.0
execute if score @s spec6 matches 1.. run scoreboard players reset @s spec6

execute if score @s spec7 matches 1.. run spectate @a[tag=7,limit=1]
execute if score @s spec7 matches 1.. run playsound minecraft:block.note_block.pling music @s ~ ~ ~ 999999999999.0 2.0 1.0
execute if score @s spec7 matches 1.. run scoreboard players reset @s spec7

execute if score @s spec8 matches 1.. run spectate @a[tag=8,limit=1]
execute if score @s spec8 matches 1.. run playsound minecraft:block.note_block.pling music @s ~ ~ ~ 999999999999.0 2.0 1.0
execute if score @s spec8 matches 1.. run scoreboard players reset @s spec8