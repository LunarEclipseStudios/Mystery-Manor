setblock -4 75 -60 minecraft:dark_oak_button[powered=false]
playsound minecraft:block.note_block.pling master @a -5.49 79.47 -54.00 1 2
playsound minecraft:block.grindstone.use master @a -5.49 79.47 -54.00 2.0 0.2
particle minecraft:flash -5.49 79.47 -54.00 0.2 0.2 0.2 1 10

setblock -6 76 -55 minecraft:mangrove_stairs[facing=south]
setblock -6 77 -54 minecraft:warped_stairs[facing=south]
setblock -6 77 -55 minecraft:dead_bubble_coral_fan[waterlogged=false]
kill @e[tag=lore_painting]
scoreboard players set true lore_painting 1