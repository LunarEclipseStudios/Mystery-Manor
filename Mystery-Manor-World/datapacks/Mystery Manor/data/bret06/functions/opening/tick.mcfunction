
execute if score @s opening matches 25..40 run clear @s carrot_on_a_stick
execute if score @s opening matches 25..40 run gamemode spectator @s
execute if score @s opening matches 25..152 run tp @s 60.18 65.00 11.95 409.99 6.04
execute if score @s opening matches 153..212 run tp @s 41.35 69.70 -88.58 -219.79 13.07
execute if score @s opening matches 213..332 run tp @s -37.93 63.84 -6.06 -489.76 -13.60
execute if score @s opening matches 333.. run function bret06:opening/end
scoreboard players add @s opening 1 