$execute if data storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot) run tellraw @s {"text":"─── Homes ───","color":"gold","bold":true}
$execute if data storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot) run function shibakapack:home/list_entry_set with storage shibakapack:homes temp
scoreboard players add #list_slot listCounter 1
execute store result storage shibakapack:homes temp.slot int 1 run scoreboard players get #list_slot listCounter
$execute store result storage shibakapack:homes temp.name int 1 run data get storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot).name
execute if score #list_slot listCounter <= #max_slot listCounter run function shibakapack:home/list_loop with storage shibakapack:homes temp