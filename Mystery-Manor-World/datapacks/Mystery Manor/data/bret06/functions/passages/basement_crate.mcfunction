scoreboard players set true basement_crate 1
scoreboard players reset timer basement_crate
playsound minecraft:block.note_block.pling master @a -3 58 -44 1 2
playsound minecraft:block.grindstone.use master @a -3 58 -44 2.0 0.2
particle minecraft:flash -3 58 -44 0.2 0.2 0.2 1 10
fill -3 58 -44 -3 59 -44 air destroy