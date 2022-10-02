playsound minecraft:block.note_block.pling master @s 13.44 68.96 -83.00 1 2
tp @e[tag=painting_passage1,type=item_frame] 13.49 70.48 -83.00
execute as @e[tag=painting_passage1] at @s run tag @s remove active
scoreboard players reset @s painting_passage1
tp @s 13.49 69.00 -82.92
execute as @e[tag=painting_passage1,type=villager] at @s run particle minecraft:flash ~ ~1.5 ~ 0.2 0.2 0.2 1 10
data merge entity @e[tag=painting_passage1,limit=1,type=item_frame] {Item:{id:"minecraft:paper",Count:1b,tag:{CustomModelData:450}}}
fill 13 71 -84 13 69 -84 barrier
#fill 13 71 -84 13 69 -84 cut_sandstone_slab[type=double,waterlogged=true]