advancement revoke @s only bret06:round_length
playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 2

scoreboard players add option round_length 5

execute if score option round_length matches 21.. run scoreboard players set option round_length 0

execute if score option round_length matches 5 run scoreboard players set option round_length 10

execute as @e[tag=round_length_model] at @s if score option round_length matches 10 run item replace entity @s container.0 with paper{CustomModelData:560}
execute as @e[tag=round_length_model] at @s if score option round_length matches 15 run item replace entity @s container.0 with paper{CustomModelData:561}
execute as @e[tag=round_length_model] at @s if score option round_length matches 20 run item replace entity @s container.0 with paper{CustomModelData:562}
execute as @e[tag=round_length_model] at @s if score option round_length matches 0 run item replace entity @s container.0 with paper{CustomModelData:563}