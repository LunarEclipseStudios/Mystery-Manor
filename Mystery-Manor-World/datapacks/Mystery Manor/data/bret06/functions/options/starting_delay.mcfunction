advancement revoke @s only bret06:starting_delay
playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 2

scoreboard players add true starting_delay 1

execute if score true starting_delay matches 3.. run scoreboard players set true starting_delay 1

execute as @e[tag=starting_delay_model] at @s if score true starting_delay matches 1 run item replace entity @s container.0 with paper{CustomModelData:558}
execute as @e[tag=starting_delay_model] at @s if score true starting_delay matches 2 run item replace entity @s container.0 with paper{CustomModelData:559}