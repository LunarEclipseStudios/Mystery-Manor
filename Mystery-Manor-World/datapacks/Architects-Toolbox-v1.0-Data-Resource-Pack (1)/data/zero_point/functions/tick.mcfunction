execute as @e[tag=ctm] at @s unless data entity @s Item run kill @s

#wall
execute as @e[tag=wall,tag=!done] at @s run setblock ~ ~ ~ minecraft:lantern[hanging=false]
execute as @e[tag=wall,tag=!done] at @s run tag @s add done

##test-world
execute in builder:test unless score true test_world_generated matches 1 if entity @a[distance=0..] run function zero_point:test/test_world_setup

execute as @e[tag=block,tag=placed] at @s if block ~ ~ ~ water run function zero_point:blocks/break
execute as @e[tag=block,tag=placed] at @s if block ~ ~ ~ air run function zero_point:blocks/break

##block
#crate
execute as @e[tag=block,tag=crate1,tag=!placed] at @s run setblock ~ ~ ~ waxed_cut_copper_slab[waterlogged=true,type=double]
execute as @e[tag=block,tag=crate1,tag=!placed] at @s run tag @s add placed
#white_planks
execute as @e[tag=block,tag=white_planks,tag=!placed] at @s run setblock ~ ~ ~ cobblestone_slab[waterlogged=true,type=double]
execute as @e[tag=block,tag=white_planks,tag=!placed] at @s run tag @s add placed
#orange_planks
execute as @e[tag=block,tag=orange_planks,tag=!placed] at @s run setblock ~ ~ ~ smooth_stone_slab[waterlogged=true,type=double]
execute as @e[tag=block,tag=orange_planks,tag=!placed] at @s run tag @s add placed
#magenta_planks
execute as @e[tag=block,tag=magenta_planks,tag=!placed] at @s run setblock ~ ~ ~ stone_slab[waterlogged=true,type=double]
execute as @e[tag=block,tag=magenta_planks,tag=!placed] at @s run tag @s add placed
#light_blue_planks
execute as @e[tag=block,tag=light_blue_planks,tag=!placed] at @s run setblock ~ ~ ~ crimson_slab[waterlogged=true,type=double]
execute as @e[tag=block,tag=light_blue_planks,tag=!placed] at @s run tag @s add placed
#yellow_planks
execute as @e[tag=block,tag=yellow_planks,tag=!placed] at @s run setblock ~ ~ ~ brick_slab[waterlogged=true,type=double]
execute as @e[tag=block,tag=yellow_planks,tag=!placed] at @s run tag @s add placed
#lime_planks
execute as @e[tag=block,tag=lime_planks,tag=!placed] at @s run setblock ~ ~ ~ petrified_oak_slab[waterlogged=true,type=double]
execute as @e[tag=block,tag=lime_planks,tag=!placed] at @s run tag @s add placed
#pink_planks
execute as @e[tag=block,tag=pink_planks,tag=!placed] at @s run setblock ~ ~ ~ sandstone_slab[waterlogged=true,type=double]
execute as @e[tag=block,tag=pink_planks,tag=!placed] at @s run tag @s add placed
#grey_planks
execute as @e[tag=block,tag=grey_planks,tag=!placed] at @s run setblock ~ ~ ~ dark_oak_slab[waterlogged=true,type=double]
execute as @e[tag=block,tag=grey_planks,tag=!placed] at @s run tag @s add placed
#light_grey_planks
execute as @e[tag=block,tag=light_grey_planks,tag=!placed] at @s run setblock ~ ~ ~ warped_slab[waterlogged=true,type=double]
execute as @e[tag=block,tag=light_grey_planks,tag=!placed] at @s run tag @s add placed
#cyan_planks
execute as @e[tag=block,tag=cyan_planks,tag=!placed] at @s run setblock ~ ~ ~ jungle_slab[waterlogged=true,type=double]
execute as @e[tag=block,tag=cyan_planks,tag=!placed] at @s run tag @s add placed
#purple_planks
execute as @e[tag=block,tag=purple_planks,tag=!placed] at @s run setblock ~ ~ ~ stone_brick_slab[waterlogged=true,type=double]
execute as @e[tag=block,tag=purple_planks,tag=!placed] at @s run tag @s add placed
#blue_planks
execute as @e[tag=block,tag=blue_planks,tag=!placed] at @s run setblock ~ ~ ~ spruce_slab[waterlogged=true,type=double]
execute as @e[tag=block,tag=blue_planks,tag=!placed] at @s run tag @s add placed
#brown_planks
execute as @e[tag=block,tag=brown_planks,tag=!placed] at @s run setblock ~ ~ ~ birch_slab[waterlogged=true,type=double]
execute as @e[tag=block,tag=brown_planks,tag=!placed] at @s run tag @s add placed
#green_planks
execute as @e[tag=block,tag=green_planks,tag=!placed] at @s run setblock ~ ~ ~ acacia_slab[waterlogged=true,type=double]
execute as @e[tag=block,tag=green_planks,tag=!placed] at @s run tag @s add placed
#red_planks
execute as @e[tag=block,tag=red_planks,tag=!placed] at @s run setblock ~ ~ ~ cut_sandstone_slab[waterlogged=true,type=double]
execute as @e[tag=block,tag=red_planks,tag=!placed] at @s run tag @s add placed
#black_planks
execute as @e[tag=block,tag=black_planks,tag=!placed] at @s run setblock ~ ~ ~ oak_slab[waterlogged=true,type=double]
execute as @e[tag=block,tag=black_planks,tag=!placed] at @s run tag @s add placed