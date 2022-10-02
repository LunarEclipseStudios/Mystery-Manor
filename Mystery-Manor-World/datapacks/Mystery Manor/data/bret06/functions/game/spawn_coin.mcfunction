
execute unless entity @e[tag=coin,distance=..4] run summon minecraft:armor_stand ~ ~1.8 ~ {Small:1b,DisabledSlots:1052688,NoGravity:1b,Tags:[coin],ArmorItems:[{},{},{},{id:paper,tag:{CustomModelData:384},Count:1}],ArmorDropChances:[0f,0f,0f,0.00f]}

scoreboard players reset interval coin_interval