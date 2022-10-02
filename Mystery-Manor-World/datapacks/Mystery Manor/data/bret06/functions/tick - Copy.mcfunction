advancement revoke @a from minecraft:adventure/root
advancement revoke @a from minecraft:story/root
advancement revoke @a from minecraft:husbandry/root

#20tick
scoreboard players add 20tick 20tick 1
execute if score 20tick 20tick matches 20.. run function bret06:20tick

#gametimer
execute if score timer buttonreload matches ..-1 run function bret06:remove_minute
execute if score timer buttonreload matches ..0 if score buttonreload minutes matches ..0 run function bret06:game/end
#display
#innocent
execute if score buttonreload minutes matches 10.. unless score option round_length matches 0 run execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:259}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:258}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:256}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:257}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:260}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:261}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] if score true gamestarted matches 1 run execute if score timer buttonreload matches ..0 if entity @s[team=dead] run title @s actionbar ["",{"text":"🄰","bold":"false"},{"text":"🄻Time Remaining: ","bold":true},{"score":{"name":"buttonreload","objective":"minutes"},"bold":true},{"text":":","bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true}]
execute if score buttonreload minutes matches 10.. unless score option round_length matches 0 run execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:259}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:258}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:256}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:257}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:260}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:261}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] if score true gamestarted matches 1 run execute if score timer buttonreload matches 1..9 if entity @s[team=dead] run title @s actionbar ["",{"text":"🄰","bold":"false"},{"text":"🄻Time Remaining: ","bold":true},{"score":{"name":"buttonreload","objective":"minutes"},"bold":true},{"text":":","bold":true},{"text":"0","bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true}]
execute if score buttonreload minutes matches 10.. unless score option round_length matches 0 run execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:259}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:258}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:256}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:257}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:260}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:261}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] if score true gamestarted matches 1 run execute unless score timer buttonreload matches ..9 if entity @s[team=dead] run title @s actionbar ["",{"text":"🄰","bold":"false"},{"text":"🄻Time Remaining: ","bold":true},{"score":{"name":"buttonreload","objective":"minutes"},"bold":true},{"text":":","bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true}]

execute unless score buttonreload minutes matches 10.. unless score option round_length matches 0 run execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:259}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:258}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:256}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:257}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:260}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:261}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] if score true gamestarted matches 1 run execute if score timer buttonreload matches ..0 if entity @s[team=dead] run title @s actionbar ["",{"text":"","bold":"false"},{"text":"ӫTime Remaining: ","bold":true},{"score":{"name":"buttonreload","objective":"minutes"},"bold":true},{"text":":","bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true}]
execute unless score buttonreload minutes matches 10.. unless score option round_length matches 0 run execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:259}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:258}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:256}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:257}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:260}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:261}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] if score true gamestarted matches 1 run execute if score timer buttonreload matches 1..9 if entity @s[team=dead] run title @s actionbar ["",{"text":"","bold":"false"},{"text":"ӫTime Remaining: ","bold":true},{"score":{"name":"buttonreload","objective":"minutes"},"bold":true},{"text":":","bold":true},{"text":"0","bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true}]
execute unless score buttonreload minutes matches 10.. unless score option round_length matches 0 run execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:259}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:258}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:256}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:257}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:260}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:261}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] if score true gamestarted matches 1 run execute unless score timer buttonreload matches ..9 if entity @s[team=dead] run title @s actionbar ["",{"text":"","bold":"false"},{"text":"ӫTime Remaining: ","bold":true},{"score":{"name":"buttonreload","objective":"minutes"},"bold":true},{"text":":","bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true}]
#innocent
execute if score buttonreload minutes matches 10.. unless score option round_length matches 0 run execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:259}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:258}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:256}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:257}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:260}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:261}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] if score true gamestarted matches 1 run execute if score timer buttonreload matches ..0 if entity @s[team=innocent] run title @s actionbar ["",{"text":"⏱","bold":"false"},{"text":"🄰","bold":"false"},{"text":"🄻Time Remaining: ","bold":true},{"score":{"name":"buttonreload","objective":"minutes"},"bold":true},{"text":":","bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true},{"text":"⏲🧍","bold":"false"}]
execute if score buttonreload minutes matches 10.. unless score option round_length matches 0 run execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:259}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:258}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:256}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:257}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:260}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:261}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] if score true gamestarted matches 1 run execute if score timer buttonreload matches 1..9 if entity @s[team=innocent] run title @s actionbar ["",{"text":"⏱","bold":"false"},{"text":"🄰","bold":"false"},{"text":"🄻Time Remaining: ","bold":true},{"score":{"name":"buttonreload","objective":"minutes"},"bold":true},{"text":":","bold":true},{"text":"0","bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true},{"text":"⏲🧍","bold":"false"}]
execute if score buttonreload minutes matches 10.. unless score option round_length matches 0 run execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:259}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:258}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:256}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:257}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:260}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:261}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] if score true gamestarted matches 1 run execute unless score timer buttonreload matches ..9 if entity @s[team=innocent] run title @s actionbar ["",{"text":"⏱","bold":"false"},{"text":"🄰","bold":"false"},{"text":"🄻Time Remaining: ","bold":true},{"score":{"name":"buttonreload","objective":"minutes"},"bold":true},{"text":":","bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true},{"text":"⏲🧍","bold":"false"}]

execute unless score buttonreload minutes matches 10.. unless score option round_length matches 0 run execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:259}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:258}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:256}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:257}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:260}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:261}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] if score true gamestarted matches 1 run execute if score timer buttonreload matches ..0 if entity @s[team=innocent] run title @s actionbar ["",{"text":"⏫","bold":"false"},{"text":"","bold":"false"},{"text":"ӫTime Remaining: ","bold":true},{"score":{"name":"buttonreload","objective":"minutes"},"bold":true},{"text":":","bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true},{"text":"⏪🧍","bold":"false"}]
execute unless score buttonreload minutes matches 10.. unless score option round_length matches 0 run execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:259}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:258}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:256}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:257}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:260}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:261}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] if score true gamestarted matches 1 run execute if score timer buttonreload matches 1..9 if entity @s[team=innocent] run title @s actionbar ["",{"text":"⏫","bold":"false"},{"text":"","bold":"false"},{"text":"ӫTime Remaining: ","bold":true},{"score":{"name":"buttonreload","objective":"minutes"},"bold":true},{"text":":","bold":true},{"text":"0","bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true},{"text":"⏪🧍","bold":"false"}]
execute unless score buttonreload minutes matches 10.. unless score option round_length matches 0 run execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:259}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:258}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:256}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:257}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:260}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:261}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] if score true gamestarted matches 1 run execute unless score timer buttonreload matches ..9 if entity @s[team=innocent] run title @s actionbar ["",{"text":"⏫","bold":"false"},{"text":"","bold":"false"},{"text":"ӫTime Remaining: ","bold":true},{"score":{"name":"buttonreload","objective":"minutes"},"bold":true},{"text":":","bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true},{"text":"⏪🧍","bold":"false"}]
#detective
execute if score buttonreload minutes matches 10.. unless score option round_length matches 0 run execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:259}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:258}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:256}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:257}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:260}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:261}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] if score true gamestarted matches 1 run execute if score timer buttonreload matches ..0 if entity @s[team=detective] run title @s actionbar ["",{"text":"⏱","bold":"false"},{"text":"🄰","bold":"false"},{"text":"🄻Time Remaining: ","bold":true},{"score":{"name":"buttonreload","objective":"minutes"},"bold":true},{"text":":","bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true},{"text":"⏲🏹","bold":"false"}]
execute if score buttonreload minutes matches 10.. unless score option round_length matches 0 run execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:259}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:258}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:256}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:257}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:260}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:261}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] if score true gamestarted matches 1 run execute if score timer buttonreload matches 1..9 if entity @s[team=detective] run title @s actionbar ["",{"text":"⏱","bold":"false"},{"text":"🄰","bold":"false"},{"text":"🄻Time Remaining: ","bold":true},{"score":{"name":"buttonreload","objective":"minutes"},"bold":true},{"text":":","bold":true},{"text":"0","bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true},{"text":"⏲🏹","bold":"false"}]
execute if score buttonreload minutes matches 10.. unless score option round_length matches 0 run execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:259}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:258}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:256}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:257}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:260}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:261}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] if score true gamestarted matches 1 run execute unless score timer buttonreload matches ..9 if entity @s[team=detective] run title @s actionbar ["",{"text":"⏱","bold":"false"},{"text":"🄰","bold":"false"},{"text":"🄻Time Remaining: ","bold":true},{"score":{"name":"buttonreload","objective":"minutes"},"bold":true},{"text":":","bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true},{"text":"⏲🏹","bold":"false"}]

execute unless score buttonreload minutes matches 10.. unless score option round_length matches 0 run execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:259}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:258}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:256}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:257}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:260}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:261}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] if score true gamestarted matches 1 run execute if score timer buttonreload matches ..0 if entity @s[team=detective] run title @s actionbar ["",{"text":"⏫","bold":"false"},{"text":"","bold":"false"},{"text":"ӫTime Remaining: ","bold":true},{"score":{"name":"buttonreload","objective":"minutes"},"bold":true},{"text":":","bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true},{"text":"⏪🏹","bold":"false"}]
execute unless score buttonreload minutes matches 10.. unless score option round_length matches 0 run execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:259}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:258}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:256}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:257}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:260}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:261}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] if score true gamestarted matches 1 run execute if score timer buttonreload matches 1..9 if entity @s[team=detective] run title @s actionbar ["",{"text":"⏫","bold":"false"},{"text":"","bold":"false"},{"text":"ӫTime Remaining: ","bold":true},{"score":{"name":"buttonreload","objective":"minutes"},"bold":true},{"text":":","bold":true},{"text":"0","bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true},{"text":"⏪🏹","bold":"false"}]
execute unless score buttonreload minutes matches 10.. unless score option round_length matches 0 run execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:259}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:258}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:256}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:257}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:260}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:261}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] if score true gamestarted matches 1 run execute unless score timer buttonreload matches ..9 if entity @s[team=detective] run title @s actionbar ["",{"text":"⏫","bold":"false"},{"text":"","bold":"false"},{"text":"ӫTime Remaining: ","bold":true},{"score":{"name":"buttonreload","objective":"minutes"},"bold":true},{"text":":","bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true},{"text":"⏪🏹","bold":"false"}]
#murderer
execute if score buttonreload minutes matches 10.. unless score option round_length matches 0 run execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:259}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:258}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:256}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:257}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:260}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:261}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] if score true gamestarted matches 1 run execute if score timer buttonreload matches ..0 if entity @s[team=murderer] run title @s actionbar ["",{"text":"⏱","bold":"false"},{"text":"🄰","bold":"false"},{"text":"🄻Time Remaining: ","bold":true},{"score":{"name":"buttonreload","objective":"minutes"},"bold":true},{"text":":","bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true},{"text":"⏲🔪","bold":"false"}]
execute if score buttonreload minutes matches 10.. unless score option round_length matches 0 run execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:259}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:258}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:256}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:257}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:260}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:261}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] if score true gamestarted matches 1 run execute if score timer buttonreload matches 1..9 if entity @s[team=murderer] run title @s actionbar ["",{"text":"⏱","bold":"false"},{"text":"🄰","bold":"false"},{"text":"🄻Time Remaining: ","bold":true},{"score":{"name":"buttonreload","objective":"minutes"},"bold":true},{"text":":","bold":true},{"text":"0","bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true},{"text":"⏲🔪","bold":"false"}]
execute if score buttonreload minutes matches 10.. unless score option round_length matches 0 run execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:259}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:258}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:256}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:257}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:260}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:261}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] if score true gamestarted matches 1 run execute unless score timer buttonreload matches ..9 if entity @s[team=murderer] run title @s actionbar ["",{"text":"⏱","bold":"false"},{"text":"🄰","bold":"false"},{"text":"🄻Time Remaining: ","bold":true},{"score":{"name":"buttonreload","objective":"minutes"},"bold":true},{"text":":","bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true},{"text":"⏲🔪","bold":"false"}]

execute unless score buttonreload minutes matches 10.. unless score option round_length matches 0 run execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:259}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:258}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:256}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:257}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:260}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:261}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] if score true gamestarted matches 1 run execute if score timer buttonreload matches ..0 if entity @s[team=murderer] run title @s actionbar ["",{"text":"⏫","bold":"false"},{"text":"","bold":"false"},{"text":"ӫTime Remaining: ","bold":true},{"score":{"name":"buttonreload","objective":"minutes"},"bold":true},{"text":":","bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true},{"text":"⏪🔪","bold":"false"}]
execute unless score buttonreload minutes matches 10.. unless score option round_length matches 0 run execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:259}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:258}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:256}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:257}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:260}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:261}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] if score true gamestarted matches 1 run execute if score timer buttonreload matches 1..9 if entity @s[team=murderer] run title @s actionbar ["",{"text":"⏫","bold":"false"},{"text":"","bold":"false"},{"text":"ӫTime Remaining: ","bold":true},{"score":{"name":"buttonreload","objective":"minutes"},"bold":true},{"text":":","bold":true},{"text":"0","bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true},{"text":"⏪🔪","bold":"false"}]
execute unless score buttonreload minutes matches 10.. unless score option round_length matches 0 run execute as @a[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:259}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:258}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:256}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:257}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:260}}},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:261}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] if score true gamestarted matches 1 run execute unless score timer buttonreload matches ..9 if entity @s[team=murderer] run title @s actionbar ["",{"text":"⏫","bold":"false"},{"text":"","bold":"false"},{"text":"ӫTime Remaining: ","bold":true},{"score":{"name":"buttonreload","objective":"minutes"},"bold":true},{"text":":","bold":true},{"score":{"name":"timer","objective":"buttonreload"},"bold":true},{"text":"⏪🔪","bold":"false"}]

#music
execute if score number track matches 2 run scoreboard players reset number track
execute if score true gamestarted matches 1 run scoreboard players add timer music 1
execute unless score number track matches 1 if score timer music matches 5000.. run function bret06:music_play
execute if score number track matches 1 if score timer music matches 2450.. run function bret06:music_play

#meeting
function bret06:button_counter
execute as @e[tag=button,tag=!pressed] at @s if block ~ ~ ~ minecraft:acacia_button[powered=true] run function bret06:game/meeting
execute as @e[tag=button] at @s if score timer buttonpressed matches ..-1 run function bret06:game/meeting_cooldown_over

#left_game
execute as @a at @s if score @s left matches 1.. run function bret06:player_left
execute as @a at @s if entity @s[team=] if score true gamestarted matches 1 run function bret06:player_left
execute as @a at @s if score @s left matches 1.. unless score true gamestarted matches 1 run clear @s
execute as @a at @s if score @s left matches 1.. unless score true gamestarted matches 1 run team leave @s
execute as @a at @s if score @s left matches 1.. unless score true gamestarted matches 1 run tp @s -43.52 65.00 -4.49
execute as @a at @s if score @s left matches 1.. unless score true gamestarted matches 1 run scoreboard players reset @s lobby_music
execute as @a at @s if score @s left matches 1.. unless score true gamestarted matches 1 run scoreboard players reset @a left

#new_death_system
execute as @a[team=dead] at @s run effect give @s minecraft:invisibility 1 255 true
execute as @e[tag=safe_spawn] at @s unless score true gamestarted matches 1 as @a[distance=15..,tag=!black,tag=!builder] run kill @s
execute as @a[team=detective] at @s if score true gamestarted matches 1 if score @s died matches 1.. run title @a title {"text":"Detective Killed!","color":"dark_red"}
execute as @a[team=detective] at @s if score true gamestarted matches 1 if score @s died matches 1.. run playsound bret06:murderer_perk master @a ~ ~ ~ 99999 0.7 1
execute as @a at @s if score true gamestarted matches 1 if score @s died matches 1.. run function bret06:game/player_group/dead
execute as @a at @s if score true gamestarted matches 1 run spawnpoint @s ~ ~ ~ ~
execute as @a[team=dead] at @s unless entity @a[team=!dead,distance=..1.5] run spectate @r[team=!dead]
#spectate
scoreboard players enable @a spec1
scoreboard players enable @a spec2
scoreboard players enable @a spec3
scoreboard players enable @a spec4
scoreboard players enable @a spec5
scoreboard players enable @a spec6
scoreboard players enable @a spec7
scoreboard players enable @a spec8

execute as @a at @s if score @s spec1 matches 1.. run spectate @a[tag=1,limit=1]
execute as @a at @s if score @s spec1 matches 1.. run playsound minecraft:block.note_block.pling music @s ~ ~ ~ 999999999999.0 2.0 1.0
execute as @a at @s if score @s spec1 matches 1.. run scoreboard players reset @s spec1

execute as @a at @s if score @s spec2 matches 1.. run spectate @a[tag=2,limit=1]
execute as @a at @s if score @s spec2 matches 1.. run playsound minecraft:block.note_block.pling music @s ~ ~ ~ 999999999999.0 2.0 1.0
execute as @a at @s if score @s spec2 matches 1.. run scoreboard players reset @s spec2

execute as @a at @s if score @s spec3 matches 1.. run spectate @a[tag=3,limit=1]
execute as @a at @s if score @s spec3 matches 1.. run playsound minecraft:block.note_block.pling music @s ~ ~ ~ 999999999999.0 2.0 1.0
execute as @a at @s if score @s spec3 matches 1.. run scoreboard players reset @s spec3

execute as @a at @s if score @s spec4 matches 1.. run spectate @a[tag=4,limit=1]
execute as @a at @s if score @s spec4 matches 1.. run playsound minecraft:block.note_block.pling music @s ~ ~ ~ 999999999999.0 2.0 1.0
execute as @a at @s if score @s spec4 matches 1.. run scoreboard players reset @s spec4

execute as @a at @s if score @s spec5 matches 1.. run spectate @a[tag=5,limit=1]
execute as @a at @s if score @s spec5 matches 1.. run playsound minecraft:block.note_block.pling music @s ~ ~ ~ 999999999999.0 2.0 1.0
execute as @a at @s if score @s spec5 matches 1.. run scoreboard players reset @s spec5

execute as @a at @s if score @s spec6 matches 1.. run spectate @a[tag=6,limit=1]
execute as @a at @s if score @s spec6 matches 1.. run playsound minecraft:block.note_block.pling music @s ~ ~ ~ 999999999999.0 2.0 1.0
execute as @a at @s if score @s spec6 matches 1.. run scoreboard players reset @s spec6

execute as @a at @s if score @s spec7 matches 1.. run spectate @a[tag=7,limit=1]
execute as @a at @s if score @s spec7 matches 1.. run playsound minecraft:block.note_block.pling music @s ~ ~ ~ 999999999999.0 2.0 1.0
execute as @a at @s if score @s spec7 matches 1.. run scoreboard players reset @s spec7

execute as @a at @s if score @s spec8 matches 1.. run spectate @a[tag=8,limit=1]
execute as @a at @s if score @s spec8 matches 1.. run playsound minecraft:block.note_block.pling music @s ~ ~ ~ 999999999999.0 2.0 1.0
execute as @a at @s if score @s spec8 matches 1.. run scoreboard players reset @s spec8


#cam_death_system
#execute as @a[team=detective] at @s if score true gamestarted matches 1 if score @s died matches 1.. run title @a title {"text":"Detective Killed!","color":"dark_red"}
#execute as @a[team=detective] at @s if score true gamestarted matches 1 if score @s died matches 1.. run playsound bret06:murderer_perk master @a ~ ~ ~ 99999 0.7 1
#execute as @a at @s if score true gamestarted matches 1 if score @s died matches 1.. run function bret06:game/player_group/dead
#execute as @a at @s if score true gamestarted matches 1 run spawnpoint @s ~ ~ ~ ~
#pages
#execute as @a[team=dead] at @s if score @s page matches 1 run function bret06:camera/page1
#execute as @a[team=dead] at @s if score @s page matches 2 run function bret06:camera/page2
#execute as @a[team=dead] at @s if score @s page matches 3 run function bret06:camera/page3
#cameras
#execute as @e[team=dead] at @s run function bret06:dead_slots
#execute as @e[team=dead] at @s unless score @s page matches 1.. run scoreboard players set @s page 1
#execute as @e[team=dead,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:272}}}] at @s if score @s click matches 1.. run function bret06:camera/next_page
#execute as @e[team=dead,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:273}}}] at @s if score @s click matches 1.. run function bret06:camera/back_page
#cam_detect
#execute as @e[tag=cam1,limit=1] at @s run tp @a[nbt={SelectedItem:{id:"minecraft:paper",tag:{cam:1}}}] ~ ~ ~
#execute as @e[tag=cam2,limit=1] at @s run tp @a[nbt={SelectedItem:{id:"minecraft:paper",tag:{cam:2}}}] ~ ~ ~
#execute as @e[tag=cam3,limit=1] at @s run tp @a[nbt={SelectedItem:{id:"minecraft:paper",tag:{cam:3}}}] ~ ~ ~
#execute as @e[tag=cam4,limit=1] at @s run tp @a[nbt={SelectedItem:{id:"minecraft:paper",tag:{cam:4}}}] ~ ~ ~
#execute as @e[tag=cam5,limit=1] at @s run tp @a[nbt={SelectedItem:{id:"minecraft:paper",tag:{cam:5}}}] ~ ~ ~
#execute as @e[tag=cam6,limit=1] at @s run tp @a[nbt={SelectedItem:{id:"minecraft:paper",tag:{cam:6}}}] ~ ~ ~
#execute as @e[tag=cam7,limit=1] at @s run tp @a[nbt={SelectedItem:{id:"minecraft:paper",tag:{cam:7}}}] ~ ~ ~
#execute as @e[tag=cam8,limit=1] at @s run tp @a[nbt={SelectedItem:{id:"minecraft:paper",tag:{cam:8}}}] ~ ~ ~

#dead_old
#execute as @a[team=detective] at @s if score @s died matches 1.. run title @a title {"text":"Detective Killed!","color":"dark_red"}
#execute as @a[team=detective] at @s if score @s died matches 1.. run playsound bret06:murderer_perk master @a ~ ~ ~ 99999 0.7 1
#execute as @a[team=dead] at @s run effect give @s minecraft:invisibility 1 255 true
#execute as @a[team=dead] at @s unless entity @a[team=!dead,distance=..1.5] run spectate @r[team=!dead]
#execute as @a at @s if score @s died matches 1.. run function bret06:game/player_group/dead_old

#game_setup
stopsound @a music minecraft:music.game
stopsound @a music minecraft:music.creative
effect give @a minecraft:weakness 999999 255 true
execute as @a at @s run attribute @s minecraft:generic.max_health base set 1
execute as @a at @s run attribute @s minecraft:generic.attack_speed base set 9999
execute as @e[team=detective] at @s run tag @s add good
execute as @e[team=innocent] at @s run tag @s add good
execute as @a[team=detective] at @s if entity @s[advancements={bret06:killed_by_detective=true}] run kill @s
execute as @a at @s unless score true gamestarted matches 1 run spawnpoint @a -44 65 -5
execute as @a[tag=!here] at @s run function bret06:first_join


#item
#murderer
execute as @a[team=murderer] at @s unless entity @s[tag=items] if score true gamestarted matches 1 unless score timer get_items matches ..9 run title @s actionbar ["",{"text":""},{"text":"ҵYou Will Get Your Items In ","bold":true},{"score":{"name":"timer","objective":"get_items"},"bold":true},{"text":" Seconds","bold":true}]
execute as @a[team=murderer] at @s unless entity @s[tag=items] if score true gamestarted matches 1 if score timer get_items matches ..9 run title @s actionbar ["",{"text":"؃"},{"text":"؇You Will Get Your Items In ","bold":true},{"score":{"name":"timer","objective":"get_items"},"bold":true},{"text":" Seconds","bold":true}]

execute as @a[team=detective] at @s unless entity @s[tag=items] if score true gamestarted matches 1 unless score timer get_items matches ..9 run title @s actionbar ["",{"text":""},{"text":"ҵYou Will Get Your Items In ","bold":true},{"score":{"name":"timer","objective":"get_items"},"bold":true},{"text":" Seconds","bold":true}]
execute as @a[team=detective] at @s unless entity @s[tag=items] if score true gamestarted matches 1 if score timer get_items matches ..9 run title @s actionbar ["",{"text":"؃"},{"text":"؇You Will Get Your Items In ","bold":true},{"score":{"name":"timer","objective":"get_items"},"bold":true},{"text":" Seconds","bold":true}]

execute as @a[team=innocent] at @s unless entity @s[tag=items] if score true gamestarted matches 1 unless score timer get_items matches ..9 run title @s actionbar ["",{"text":"","bold":"false"},{"text":"؊The Game Will Start In ","bold":true},{"score":{"name":"timer","objective":"get_items"},"bold":true},{"text":" Seconds","bold":true}]
execute as @a[team=innocent] at @s unless entity @s[tag=items] if score true gamestarted matches 1 if score timer get_items matches ..9 run title @s actionbar ["",{"text":"¬","bold":"false"},{"text":"The Game Will Start In ","bold":true},{"score":{"name":"timer","objective":"get_items"},"bold":true},{"text":" Seconds","bold":true}]
execute unless entity @a[tag=items] if score timer get_items matches ..0 run function bret06:perks/starting_cooldown
execute if score timer get_items matches ..0 run tag @a add items
execute as @a[team=murderer,tag=items] at @s run function bret06:murderer_slots
execute as @a[team=murderer,tag=items] at @s unless data entity @s {Inventory:[{tag:{Knife:1b},Slot:0b}]} run function bret06:items/knife
execute as @e[type=item,nbt={Item: {id: "minecraft:iron_sword", Count: 1b,tag:{Knife:1b}}}] at @s run data merge entity @s {PickupDelay:100b}
execute as @e[type=item,nbt={Item: {id: "minecraft:paper", Count: 1b,tag:{CustomModelData:256}}}] at @s run data merge entity @s {PickupDelay:100b}
#detective
execute as @a[team=detective,tag=items] at @s run function bret06:detective_slots
execute as @a[team=detective,tag=items] at @s unless data entity @s {Inventory:[{tag:{detect:1b},Slot:0b}]} run function bret06:items/bow
execute as @e[type=item,nbt={Item: {id: "minecraft:bow", Count: 1b,tag:{detect:1b}}}] at @s if entity @e[team=innocent,distance=..1.5] run function bret06:items/get_bow
kill @e[type=item,nbt=!{Item: {id: "minecraft:bow", Count: 1b,tag:{detect:1b}}}]
execute as @e[type=item,nbt={Item: {id: "minecraft:bow", Count: 1b,tag:{detect:1b}}}] at @s run data merge entity @s {PickupDelay:100b}
execute if entity @e[team=detective] run kill @e[type=item,nbt={Item: {id: "minecraft:bow", Count: 1b,tag:{detect:1b}}}]
execute as @e[type=arrow] at @s run data merge entity @s {damage: 200d}
item replace entity @a[team=detective] inventory.26 with arrow
execute as @a[team=innocent,nbt={Inventory:[{id:"minecraft:bow",tag:{detect:1b}}]}] at @s run team join detective
execute as @e[type=arrow] at @s if entity @s[nbt={inGround:1b}] run kill @s
#teamless
execute as @a[team=,tag=!builder] at @s run function bret06:teamless_slots
execute as @a[tag=!items,tag=!builder] at @s run function bret06:teamless_slots
execute as @a[team=innocent] at @s run function bret06:teamless_slots


#perks
#lights_out
execute as @a at @s if score @s click matches 1.. if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:256}}} run function bret06:perks/murderer/lights_out/activate
execute as @a at @s if score @s click matches 1.. if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:257}}} run function bret06:perks/murderer/lights_out/activate
execute as @a[team=murderer,tag=items] at @s unless data entity @s {Inventory:[{tag:{lights_out:1b},Slot:8b}]} run function bret06:perks/murderer/lights_out/lights_out_item
function bret06:perks/murderer/lights_out/item
execute unless score true power_out matches 1 run effect clear @a[team=murderer] minecraft:night_vision
execute as @a[team=murderer] at @s if score perk1 minutes matches ..0 if score @s perk1 matches ..0 run function bret06:perks/murderer/lights_out/reload
#timer
execute as @a[team=murderer] if score @s perk1 matches ..-1 run function bret06:perks/murderer/lights_out/remove_minute
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:257}}}] at @s unless score true power_out matches 1 unless score @s fixing_power matches 1.. if entity @a[tag=items] run execute if score @s perk1 matches ..0 run title @s actionbar ["",{"text":"➕🄹","bold":"false"},{"text":"🄺Perk Cooldown: ","bold":true,"color":"green"},{"score":{"name":"perk1","objective":"minutes"},"bold":true,"color":"green"},{"text":":","bold":true,"color":"green"},{"score":{"name":"@s","objective":"perk1"},"bold":true,"color":"green"},{"score":{"name":"@s","objective":"perk1"},"bold":true,"color":"green"},{"text":"➖🔪","bold":"false"}]
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:257}}}] at @s unless score true power_out matches 1 unless score @s fixing_power matches 1.. if entity @a[tag=items] run execute if score @s perk1 matches 1..9 run title @s actionbar ["",{"text":"➕🄹","bold":"false"},{"text":"🄺Perk Cooldown: ","bold":true,"color":"green"},{"score":{"name":"perk1","objective":"minutes"},"bold":true,"color":"green"},{"text":":","bold":true,"color":"green"},{"text":"0","bold":true,"color":"green"},{"score":{"name":"@s","objective":"perk1"},"bold":true,"color":"green"},{"text":"➖🔪","bold":"false"}]
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:257}}}] at @s unless score true power_out matches 1 unless score @s fixing_power matches 1.. if entity @a[tag=items] run execute unless score @s perk1 matches ..9 run title @s actionbar ["",{"text":"➕🄹","bold":"false"},{"text":"🄺Perk Cooldown: ","bold":true,"color":"green"},{"score":{"name":"perk1","objective":"minutes"},"bold":true,"color":"green"},{"text":":","bold":true,"color":"green"},{"score":{"name":"@s","objective":"perk1"},"bold":true,"color":"green"},{"text":"➖🔪","bold":"false"}]
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:256}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] run title @s actionbar [{"text":"❎🅂","bold":"false"},{"text":"🄳Right Click To Use!","color":"green","bold":"true"},{"text":"❌🔪","bold":"false"}]
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:257}}}] at @s if score true power_out matches 1 unless score @s fixing_power matches 1.. if entity @a[tag=items] run title @s actionbar [{"text":"➗🄱","bold":"false"},{"text":"🄽Waiting For The Lights To Turn On...","color":"green","bold":"true"},{"text":"➔🔪","bold":"false"}]

#fake_body
execute as @a at @s if score @s click matches 1.. if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:258}}} run function bret06:perks/murderer/fake_body/activate
execute as @a at @s if score @s click matches 1.. if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:259}}} run function bret06:perks/murderer/fake_body/activate
execute as @a[team=murderer,tag=items] at @s run function bret06:perks/murderer/fake_body/item
execute as @a[team=murderer] at @s if score perk2 minutes matches ..0 if score @s perk2 matches ..0 run function bret06:perks/murderer/fake_body/reload
#timer
execute as @a[team=murderer] if score @s perk2 matches ..-1 run function bret06:perks/murderer/fake_body/remove_minute
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:259}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] run execute if score @s perk2 matches ..0 run title @s actionbar ["",{"text":"➕🄹","bold":"false"},{"text":"🄺Perk Cooldown: ","bold":true,"color":"green"},{"score":{"name":"perk2","objective":"minutes"},"bold":true,"color":"green"},{"text":":","bold":true,"color":"green"},{"score":{"name":"@s","objective":"perk2"},"bold":true,"color":"green"},{"score":{"name":"@s","objective":"perk2"},"bold":true,"color":"green"},{"text":"➖🔪","bold":"false"}]
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:259}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] run execute if score @s perk2 matches 1..9 run title @s actionbar ["",{"text":"➕🄹","bold":"false"},{"text":"🄺Perk Cooldown: ","bold":true,"color":"green"},{"score":{"name":"perk2","objective":"minutes"},"bold":true,"color":"green"},{"text":":","bold":true,"color":"green"},{"text":"0","bold":true,"color":"green"},{"score":{"name":"@s","objective":"perk2"},"bold":true,"color":"green"},{"text":"➖🔪","bold":"false"}]
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:259}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] run execute unless score @s perk2 matches ..9 run title @s actionbar ["",{"text":"➕🄹","bold":"false"},{"text":"🄺Perk Cooldown: ","bold":true,"color":"green"},{"score":{"name":"perk2","objective":"minutes"},"bold":true,"color":"green"},{"text":":","bold":true,"color":"green"},{"score":{"name":"@s","objective":"perk2"},"bold":true,"color":"green"},{"text":"➖🔪","bold":"false"}]
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:258}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] run title @s actionbar [{"text":"❎🅂","bold":"false"},{"text":"🄳Right Click To Use!","color":"green","bold":"true"},{"text":"❌🔪","bold":"false"}]

#clue
execute as @a at @s if score @s click matches 1.. if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:260}}} run function bret06:perks/detective/clue/activate
execute as @a at @s if score @s click matches 1.. if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:261}}} run function bret06:perks/detective/clue/activate
execute as @a[team=detective,tag=items] at @s run function bret06:perks/detective/clue/item
execute as @a[team=detective] at @s if score dperk1 minutes matches ..0 if score @s dperk1 matches ..0 run function bret06:perks/detective/clue/reload
#timer
execute as @a[team=detective] if score @s dperk1 matches ..-1 run function bret06:perks/detective/clue/remove_minute
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:261}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] run execute unless score dperk1 minutes matches 50.. run execute if score @s dperk1 matches ..0 run title @s actionbar ["",{"text":"➕🄹","bold":"false"},{"text":"🄺Perk Cooldown: ","bold":true,"color":"green"},{"score":{"name":"dperk1","objective":"minutes"},"bold":true,"color":"green"},{"text":":","bold":true,"color":"green"},{"score":{"name":"@s","objective":"dperk1"},"bold":true,"color":"green"},{"score":{"name":"@s","objective":"dperk1"},"bold":true,"color":"green"},{"text":"➖🏹","bold":"false"}]
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:261}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] run execute unless score dperk1 minutes matches 50.. run execute if score @s dperk1 matches 1..9 run title @s actionbar ["",{"text":"➕🄹","bold":"false"},{"text":"🄺Perk Cooldown: ","bold":true,"color":"green"},{"score":{"name":"dperk1","objective":"minutes"},"bold":true,"color":"green"},{"text":":","bold":true,"color":"green"},{"text":"0","bold":true,"color":"green"},{"score":{"name":"@s","objective":"dperk1"},"bold":true,"color":"green"},{"text":"➖🏹","bold":"false"}]
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:261}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] run execute unless score dperk1 minutes matches 50.. run execute unless score @s dperk1 matches ..9 run title @s actionbar ["",{"text":"➕🄹","bold":"false"},{"text":"🄺Perk Cooldown: ","bold":true,"color":"green"},{"score":{"name":"dperk1","objective":"minutes"},"bold":true,"color":"green"},{"text":":","bold":true,"color":"green"},{"score":{"name":"@s","objective":"dperk1"},"bold":true,"color":"green"},{"text":"➖🏹","bold":"false"}]
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:260}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] run title @s actionbar [{"text":"❎🅂","bold":"false"},{"text":"🄳Right Click To Use!","color":"green","bold":"true"},{"text":"❌🏹","bold":"false"}]
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:261}}}] at @s unless score @s fixing_power matches 1.. if entity @a[tag=items] run execute if score dperk1 minutes matches 50.. run title @s actionbar [{"text":"❓🄵🅅🄷","bold":"false"},{"text":"🄶This Perk Can Only Be Used Once Per Game!","bold":"true","color":"red"},{"text":"❗🏹","bold":"false"}]

#clothes
execute as @a[team=murderer,nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{Knife:1b}}}] at @s run item replace entity @s armor.head with minecraft:paper{CustomModelData:256}
execute as @a[team=murderer,nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{Knife:1b}}}] at @s run item replace entity @s armor.chest with minecraft:leather_chestplate{display:{color:1908001}}
execute as @a[team=murderer,nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{Knife:1b}}}] at @s run item replace entity @s armor.legs with minecraft:leather_leggings{display:{color:1908001}}
execute as @a[team=murderer,nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{Knife:1b}}}] at @s run item replace entity @s armor.feet with minecraft:leather_boots{display:{color:1908001}}

execute as @a[team=murderer] unless data entity @s {SelectedItem:{id:"minecraft:iron_sword",tag:{Knife:1b}}} at @s run item replace entity @s armor.head with minecraft:air
execute as @a[team=murderer] unless data entity @s {SelectedItem:{id:"minecraft:iron_sword",tag:{Knife:1b}}} at @s run item replace entity @s armor.chest with minecraft:air
execute as @a[team=murderer] unless data entity @s {SelectedItem:{id:"minecraft:iron_sword",tag:{Knife:1b}}} at @s run item replace entity @s armor.legs with minecraft:air
execute as @a[team=murderer] unless data entity @s {SelectedItem:{id:"minecraft:iron_sword",tag:{Knife:1b}}} at @s run item replace entity @s armor.feet with minecraft:air

#who_won
execute unless score true dev_mode matches 1 run execute if score true gamestarted matches 1 unless entity @a[tag=good] run function bret06:game/end
execute unless score true dev_mode matches 1 run execute if score true gamestarted matches 1 unless entity @a[team=murderer] run function bret06:game/end

#execute if score true gamestarted matches 1 unless entity @a[tag=good] run scoreboard players add timer overtime 1
#execute if score true gamestarted matches 1 unless entity @a[team=murderer] run scoreboard players add timer overtime 1

#execute if score timer overtime matches 1 unless entity @a[tag=good] run function bret06:game/murderer_win
#execute if score timer overtime matches 1 unless entity @a[team=murderer] run function bret06:game/innocent_win

#execute if score timer overtime matches 100.. unless entity @a[tag=good] run function bret06:game/end
#execute if score timer overtime matches 100.. unless entity @a[team=murderer] run function bret06:game/end

#game_start
execute if block -44 66 -8 minecraft:stone_button[powered=true] run function bret06:game/pre_start

#spawn_area
execute if score true gamestarted matches 1 run execute as @a[tag=!spawned] at @s if score @s spawn_area matches 1 run function bret06:spawns/1
execute if score true gamestarted matches 1 run execute as @a[tag=!spawned] at @s if score @s spawn_area matches 2 run function bret06:spawns/2
execute if score true gamestarted matches 1 run execute as @a[tag=!spawned] at @s if score @s spawn_area matches 3 run function bret06:spawns/3
execute if score true gamestarted matches 1 run execute as @a[tag=!spawned] at @s if score @s spawn_area matches 4 run function bret06:spawns/4
execute if score true gamestarted matches 1 run execute as @a[tag=!spawned] at @s if score @s spawn_area matches 5 run function bret06:spawns/5
execute if score true gamestarted matches 1 run execute as @a[tag=!spawned] at @s if score @s spawn_area matches 6 run function bret06:spawns/6
execute if score true gamestarted matches 1 run execute as @a[tag=!spawned] at @s if score @s spawn_area matches 7 run function bret06:spawns/7
execute if score true gamestarted matches 1 run execute as @a[tag=!spawned] at @s if score @s spawn_area matches 8 run function bret06:spawns/8
execute as @a if predicate bret06:randomize run scoreboard players add @s spawn_area 1
execute as @a if predicate bret06:randomize run scoreboard players add @s spawn_area 2
execute as @a at @s if score @s spawn_area matches 9.. run scoreboard players set @s spawn_area 1

#lobby
execute unless score true gamestarted matches 1 run scoreboard players add @a lobby_music 1
execute as @a at @s if score @s lobby_music matches 1 run function bret06:lobby_music
execute as @a at @s if score @s lobby_music matches 7800.. run scoreboard players reset @s lobby_music

#blackout
execute if score timer blackout matches 8.. run function bret06:game/start

#power_on
execute as @a at @s if score true power_out matches 1 if predicate bret06:looking_at_switch_box if predicate bret06:crouch if entity @e[tag=switch_box,distance=..3] run scoreboard players add @s fixing_power 1
execute as @a at @s unless score @s fixing_power matches 1.. if score true power_out matches 1 run execute as @e[tag=switch_box] at @s run data merge entity @s {Item:{id:"minecraft:paper",Count:1b,tag:{CustomModelData:320,display:{Name:'[{"text":"[Crouch To Fix]","italic":false,"color":"green"}]'}}}}
execute unless score true power_out matches 1 run execute as @e[tag=switch_box] at @s run data merge entity @s {Item:{id:"minecraft:paper",Count:1b,tag:{CustomModelData:320,display:{Name:'[{"text":"[Fuse Box]","italic":false,"color":"green"}]'}}}}
execute as @a at @s if score @s fixing_power matches 1.. run execute as @e[tag=switch_box,tag=!fixing] at @s run data merge entity @e[tag=switch_box,limit=1] {Item:{id:"minecraft:paper",Count:1b,tag:{CustomModelData:321,display:{Name:'[{"text":"[Fixing...]","italic":false,"color":"green"}]'}}}}
execute as @e[tag=switch_box] at @s run scoreboard players reset @a[distance=3..] fixing_power
execute unless score true power_out matches 1 run scoreboard players reset @a fixing_power
execute as @a at @s unless predicate bret06:crouch run scoreboard players reset @s fixing_power
execute as @a at @s if score @s fixing_power matches 302.. if score true power_out matches 1 run function bret06:perks/murderer/lights_out/fix

#progress_bar
execute as @a at @s if entity @s[team=detective] if score @s fixing_power matches 1..60 run title @s actionbar ["",{"text":"⓫🅉","bold":"false"},{"text":"🅇⬜⬜⬜⬜⬜","color":"white"},{"text":"⓬🏹","bold":"false"}]
execute as @a at @s if entity @s[team=detective] if score @s fixing_power matches 60..120 run title @s actionbar ["",{"text":"⓫🅉","bold":"false"},{"text":"🅇⬛⬜⬜⬜⬜","color":"white"},{"text":"⓬🏹","bold":"false"}]
execute as @a at @s if entity @s[team=detective] if score @s fixing_power matches 120..180 run title @s actionbar ["",{"text":"⓫🅉","bold":"false"},{"text":"🅇⬛⬛⬜⬜⬜","color":"white"},{"text":"⓬🏹","bold":"false"}]
execute as @a at @s if entity @s[team=detective] if score @s fixing_power matches 180..240 run title @s actionbar ["",{"text":"⓫🅉","bold":"false"},{"text":"🅇⬛⬛⬛⬜⬜","color":"white"},{"text":"⓬🏹","bold":"false"}]
execute as @a at @s if entity @s[team=detective] if score @s fixing_power matches 240..300 run title @s actionbar ["",{"text":"⓫🅉","bold":"false"},{"text":"🅇⬛⬛⬛⬛⬜","color":"white"},{"text":"⓬🏹","bold":"false"}]
execute as @a at @s if entity @s[team=detective] if score @s fixing_power matches 300.. run title @s actionbar ["",{"text":"⓫🅉","bold":"false"},{"text":"🅇⬛⬛⬛⬛⬛","color":"white"},{"text":"⓬🏹","bold":"false"}]

execute as @a at @s if entity @s[team=murderer] if score @s fixing_power matches 1..60 run title @s actionbar ["",{"text":"⓫🅉","bold":"false"},{"text":"🅇⬜⬜⬜⬜⬜","color":"white"},{"text":"⓬🔪","bold":"false"}]
execute as @a at @s if entity @s[team=murderer] if score @s fixing_power matches 60..120 run title @s actionbar ["",{"text":"⓫🅉","bold":"false"},{"text":"🅇⬛⬜⬜⬜⬜","color":"white"},{"text":"⓬🔪","bold":"false"}]
execute as @a at @s if entity @s[team=murderer] if score @s fixing_power matches 120..180 run title @s actionbar ["",{"text":"⓫🅉","bold":"false"},{"text":"🅇⬛⬛⬜⬜⬜","color":"white"},{"text":"⓬🔪","bold":"false"}]
execute as @a at @s if entity @s[team=murderer] if score @s fixing_power matches 180..240 run title @s actionbar ["",{"text":"⓫🅉","bold":"false"},{"text":"🅇⬛⬛⬛⬜⬜","color":"white"},{"text":"⓬🔪","bold":"false"}]
execute as @a at @s if entity @s[team=murderer] if score @s fixing_power matches 240..300 run title @s actionbar ["",{"text":"⓫🅉","bold":"false"},{"text":"🅇⬛⬛⬛⬛⬜","color":"white"},{"text":"⓬🔪","bold":"false"}]
execute as @a at @s if entity @s[team=murderer] if score @s fixing_power matches 300.. run title @s actionbar ["",{"text":"⓫🅉","bold":"false"},{"text":"🅇⬛⬛⬛⬛⬛","color":"white"},{"text":"⓬🔪","bold":"false"}]

execute as @a at @s if entity @s[team=innocent] if score @s fixing_power matches 1..60 run title @s actionbar ["",{"text":"⓫🅉","bold":"false"},{"text":"🅇⬜⬜⬜⬜⬜","color":"white"},{"text":"⓬🧍","bold":"false"}]
execute as @a at @s if entity @s[team=innocent] if score @s fixing_power matches 60..120 run title @s actionbar ["",{"text":"⓫🅉","bold":"false"},{"text":"🅇⬛⬜⬜⬜⬜","color":"white"},{"text":"⓬🧍","bold":"false"}]
execute as @a at @s if entity @s[team=innocent] if score @s fixing_power matches 120..180 run title @s actionbar ["",{"text":"⓫🅉","bold":"false"},{"text":"🅇⬛⬛⬜⬜⬜","color":"white"},{"text":"⓬🧍","bold":"false"}]
execute as @a at @s if entity @s[team=innocent] if score @s fixing_power matches 180..240 run title @s actionbar ["",{"text":"⓫🅉","bold":"false"},{"text":"🅇⬛⬛⬛⬜⬜","color":"white"},{"text":"⓬🧍","bold":"false"}]
execute as @a at @s if entity @s[team=innocent] if score @s fixing_power matches 240..300 run title @s actionbar ["",{"text":"⓫🅉","bold":"false"},{"text":"🅇⬛⬛⬛⬛⬜","color":"white"},{"text":"⓬🧍","bold":"false"}]
execute as @a at @s if entity @s[team=innocent] if score @s fixing_power matches 300.. run title @s actionbar ["",{"text":"⓫🅉","bold":"false"},{"text":"🅇⬛⬛⬛⬛⬛","color":"white"},{"text":"🧍","bold":"false"}]

execute as @a at @s if score @s fixing_power matches 60 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute as @a at @s if score @s fixing_power matches 120 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.2
execute as @a at @s if score @s fixing_power matches 180 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.4
execute as @a at @s if score @s fixing_power matches 240 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.6

#options
execute if block -42 66 -8 minecraft:stone_button[powered=true] run function bret06:options/settings
execute as @a at @s if score @s sel_round_length matches 1.. run function bret06:options/round_length/options
execute as @a at @s if score @s s_murderer_count matches 1.. run function bret06:options/murderer_count/options
execute as @a at @s if score @s s_starting_delay matches 1.. run function bret06:options/starting_delay/options
#round_length
execute as @a at @s if score @s 10minutes matches 1.. run function bret06:options/round_length/10min
execute as @a at @s if score @s 15minutes matches 1.. run function bret06:options/round_length/15min
execute as @a at @s if score @s 20minutes matches 1.. run function bret06:options/round_length/20min
execute as @a at @s if score @s no_timer matches 1.. run function bret06:options/round_length/no_timer
#murderer_count
execute as @a at @s if score @s 1murderer matches 1.. run function bret06:options/murderer_count/1
execute as @a at @s if score @s 2murderer matches 1.. run function bret06:options/murderer_count/2
execute as @a at @s if score @s 3murderer matches 1.. run function bret06:options/murderer_count/3
#murderer_count
execute as @a at @s if score @s sdtrue matches 1.. run function bret06:options/starting_delay/true
execute as @a at @s if score @s sdfalse matches 1.. run function bret06:options/starting_delay/false

#triggers
scoreboard players enable @a sel_round_length
scoreboard players enable @a s_murderer_count
scoreboard players enable @a s_starting_delay
#round_length
scoreboard players enable @a 10minutes
scoreboard players enable @a 15minutes
scoreboard players enable @a 20minutes
scoreboard players enable @a no_timer
#murderer_count
scoreboard players enable @a 1murderer
scoreboard players enable @a 2murderer
scoreboard players enable @a 3murderer
#starting_delay
scoreboard players enable @a sdtrue
scoreboard players enable @a sdfalse

#credits
execute if block -46 66 -8 minecraft:stone_button[powered=true] run function bret06:game/credits

#footprints
execute as @a at @s if score @s footprints matches 10.. run function bret06:perks/detective/clue/end_footprints


#corner
#execute as @a[tag=footprints,y_rotation=30..60] at @s unless block ~ ~-.1 ~ air unless entity @e[tag=print,distance=..1] run summon minecraft:item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["print"],Fixed:1b,Item:{id:"minecraft:air",Count:1b,tag:{CustomModelData:352}},ItemRotation:1}
#execute as @a[tag=footprints,y_rotation=120..150] at @s unless block ~ ~-.1 ~ air unless entity @e[tag=print,distance=..1] run summon minecraft:item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["print"],Fixed:1b,Item:{id:"minecraft:air",Count:1b,tag:{CustomModelData:352}},ItemRotation:3}
#execute as @a[tag=footprints,y_rotation=-150..-120] at @s unless block ~ ~-.1 ~ air unless entity @e[tag=print,distance=..1] run summon minecraft:item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["print"],Fixed:1b,Item:{id:"minecraft:air",Count:1b,tag:{CustomModelData:352}},ItemRotation:5}
#execute as @a[tag=footprints,y_rotation=-60..-30] at @s unless block ~ ~-.1 ~ air unless entity @e[tag=print,distance=..1] run summon minecraft:item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["print"],Fixed:1b,Item:{id:"minecraft:air",Count:1b,tag:{CustomModelData:352}},ItemRotation:7}

#execute as @a[tag=footprints,y_rotation=60..120] at @s unless block ~ ~-.1 ~ air unless entity @e[tag=print,distance=..1] run summon minecraft:item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["print"],Fixed:1b,Item:{id:"minecraft:air",Count:1b,tag:{CustomModelData:352}},ItemRotation:2}
#execute as @a[tag=footprints,y_rotation=150..-150] at @s unless block ~ ~-.1 ~ air unless entity @e[tag=print,distance=..1] run summon minecraft:item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["print"],Fixed:1b,Item:{id:"minecraft:air",Count:1b,tag:{CustomModelData:352}},ItemRotation:4}
#execute as @a[tag=footprints,y_rotation=-120..-60] at @s unless block ~ ~-.1 ~ air unless entity @e[tag=print,distance=..1] run summon minecraft:item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["print"],Fixed:1b,Item:{id:"minecraft:air",Count:1b,tag:{CustomModelData:352}},ItemRotation:6}
#execute as @a[tag=footprints,y_rotation=-30..30] at @s unless block ~ ~-.1 ~ air unless entity @e[tag=print,distance=..1] run summon minecraft:item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["print"],Fixed:1b,Item:{id:"minecraft:air",Count:1b,tag:{CustomModelData:352}},ItemRotation:8}



execute as @a[tag=footprints,y_rotation=-180..-135] at @s unless block ~ ~-.1 ~ air unless entity @e[tag=print,distance=..1] run summon minecraft:item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["print"],Fixed:1b,Item:{id:"minecraft:air",Count:1b,tag:{CustomModelData:352}},ItemRotation:2}
execute as @a[tag=footprints,y_rotation=-45..45] at @s unless block ~ ~-.1 ~ air unless entity @e[tag=print,distance=..1] run summon minecraft:item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["print"],Fixed:1b,Item:{id:"minecraft:air",Count:1b,tag:{CustomModelData:352}},ItemRotation:2}
execute as @a[tag=footprints,y_rotation=135..180] at @s unless block ~ ~-.1 ~ air unless entity @e[tag=print,distance=..1] run summon minecraft:item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["print"],Fixed:1b,Item:{id:"minecraft:air",Count:1b,tag:{CustomModelData:352}},ItemRotation:2}

execute as @a[tag=footprints,y_rotation=-135..-45] at @s unless block ~ ~-.1 ~ air unless entity @e[tag=print,distance=..1] run summon minecraft:item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["print"],Fixed:1b,Item:{id:"minecraft:air",Count:1b,tag:{CustomModelData:352}},ItemRotation:0}
execute as @a[tag=footprints,y_rotation=45..135] at @s unless block ~ ~-.1 ~ air unless entity @e[tag=print,distance=..1] run summon minecraft:item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["print"],Fixed:1b,Item:{id:"minecraft:air",Count:1b,tag:{CustomModelData:352}},ItemRotation:0}

##passages
#study_bookshelf
execute unless score true study_bookshelf matches 1 if block 21 69 -99 minecraft:oak_button[powered=true] run setblock 36 68 -101 minecraft:lever[powered=false,face=floor]
#library_fireplace
execute unless score true library_fireplace matches 1 if block 12 72 -50 minecraft:dark_oak_button[powered=true] run function bret06:passages/library_fireplace
execute unless score true library_fireplace matches 1 if block 12 59 -49 minecraft:oak_button[powered=true] run function bret06:passages/library_fireplace
#basement_crate
execute unless score true basement_crate matches 1 if block 0 59 -45 minecraft:oak_button[powered=true] run function bret06:passages/basement_crate
execute unless score true basement_crate matches 1 if block -3 58 -45 minecraft:stone_button[powered=true] run function bret06:passages/basement_crate

##coins
execute as @e[tag=coin] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=coin] at @s if entity @e[type=minecraft:player,distance=..1,team=!dead] run function bret06:game/collect_coin

execute as @e[tag=coin_point,sort=random,limit=1] at @s if score interval coin_interval matches 15.. if score true gamestarted matches 1 run function bret06:game/spawn_coin
execute as @e[type=arrow] at @s if entity @e[tag=coin,distance=..1.5] run kill @e[tag=coin,sort=nearest]
#oneshot_bow
execute as @a[team=!detective,team=!dead,team=!] at @s if score @s coins matches 10.. run function bret06:game/innocent_oneshot
execute as @a[tag=hasBow] at @s run item replace entity @s hotbar.1 with bow
execute as @a[tag=hasBow] at @s run item replace entity @s inventory.26 with arrow
execute as @a[tag=hasBow] at @s if score @s bowshot matches 1.. run function bret06:game/innocent_oneshot_remove