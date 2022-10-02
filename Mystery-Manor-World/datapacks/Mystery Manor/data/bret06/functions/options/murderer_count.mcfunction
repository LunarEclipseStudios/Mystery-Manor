advancement revoke @s only bret06:murderer_count
playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 2

scoreboard players add option murderer_count 1

execute if score option murderer_count matches 4.. run scoreboard players set option murderer_count 1

execute as @e[tag=murderer_count_model] at @s if score option murderer_count matches 1 run item replace entity @s container.0 with paper{CustomModelData:555}
execute as @e[tag=murderer_count_model] at @s if score option murderer_count matches 2 run item replace entity @s container.0 with paper{CustomModelData:556}
execute as @e[tag=murderer_count_model] at @s if score option murderer_count matches 3 run item replace entity @s container.0 with paper{CustomModelData:557}