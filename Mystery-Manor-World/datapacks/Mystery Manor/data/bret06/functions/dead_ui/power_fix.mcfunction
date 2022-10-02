#progress_bar
execute as @a at @s if score @s fixing_power matches 1..60 run title @a[distance=..1,team=dead] actionbar [{"text":"楴極"},{"text":"⬜⬜⬜⬜⬜"}]
execute as @a at @s if score @s fixing_power matches 60..120 run title @a[distance=..1,team=dead] actionbar [{"text":"楴極"},{"text":"⬛⬜⬜⬜⬜"}]
execute as @a at @s if score @s fixing_power matches 120..180 run title @a[distance=..1,team=dead] actionbar [{"text":"楴極"},{"text":"⬛⬛⬜⬜⬜"}]
execute as @a at @s if score @s fixing_power matches 180..240 run title @a[distance=..1,team=dead] actionbar [{"text":"楴極"},{"text":"⬛⬛⬛⬜⬜"}]
execute as @a at @s if score @s fixing_power matches 240..300 run title @a[distance=..1,team=dead] actionbar [{"text":"楴極"},{"text":"⬛⬛⬛⬛⬜"}]
execute as @a at @s if score @s fixing_power matches 300.. run title @a[distance=..1,team=dead] actionbar [{"text":"楴極"},{"text":"⬛⬛⬛⬛⬛"}]

execute as @a at @s if score @s fixing_power matches 60 run playsound minecraft:block.note_block.pling master @a[distance=..1,team=dead] ~ ~ ~ 1 1
execute as @a at @s if score @s fixing_power matches 120 run playsound minecraft:block.note_block.pling master @a[distance=..1,team=dead] ~ ~ ~ 1 1.2
execute as @a at @s if score @s fixing_power matches 180 run playsound minecraft:block.note_block.pling master @a[distance=..1,team=dead] ~ ~ ~ 1 1.4
execute as @a at @s if score @s fixing_power matches 240 run playsound minecraft:block.note_block.pling master @a[distance=..1,team=dead] ~ ~ ~ 1 1.6