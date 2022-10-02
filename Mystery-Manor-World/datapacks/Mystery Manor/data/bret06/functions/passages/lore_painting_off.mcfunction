setblock -4 75 -60 minecraft:dark_oak_button[powered=false]
playsound minecraft:block.note_block.pling master @a -5.49 79.47 -54.00 1 2
playsound minecraft:block.grindstone.use master @a -5.49 79.47 -54.00 2.0 0.2
particle minecraft:flash -5.49 79.47 -54.00 0.2 0.2 0.2 1 10

summon minecraft:item_frame -5.49 79.47 -54.00 {Facing:2b,Invisible:1b,Fixed:1b,Item: {id: "minecraft:paper", tag: {CustomModelData: 450}, Count: 1b},Tags:["lore_painting"]}
setblock -6 76 -55 minecraft:air
setblock -6 77 -54 minecraft:air
setblock -6 77 -55 minecraft:air
scoreboard players reset timer lore_painting
scoreboard players set true lore_painting 0