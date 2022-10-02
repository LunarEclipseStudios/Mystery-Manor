scoreboard players set true test_world_generated 1
execute in builder:test run forceload add 0 0 0 0
execute in builder:test run fill 12 61 20 -11 61 -20 stone
execute in builder:test run setblock 0 61 0 glass
setblock 0 62 0 structure_block{mirror: "NONE", powered: 0b, integrity: 1.0f, seed: 0L, sizeY: 15, posZ: -20, sizeZ: 41, showboundingbox: 0b, showair: 0b, posY: 0, posX: -11, name: "builder:test_world_platform", rotation: "NONE", mode: "LOAD", id: "minecraft:structure_block", sizeX: 24, metadata: "", author: "Bret06 !", ignoreEntities: 0b}
setblock 0 62 1 redstone_block 