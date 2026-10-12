data remove storage shibakapack:homes temp_entry
$execute if data storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot) run data modify storage shibakapack:homes temp_entry set from storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot)
$execute if data storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot) run data modify storage shibakapack:homes temp_entry.u1 set value $(u1)
$execute if data storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot) run data modify storage shibakapack:homes temp_entry.u2 set value $(u2)
$execute if data storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot) run data modify storage shibakapack:homes temp_entry.u3 set value $(u3)
$execute if data storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot) run data modify storage shibakapack:homes temp_entry.u4 set value $(u4)
$execute if data storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot) run data modify storage shibakapack:homes temp_entry.slot set value $(slot)
$execute if data storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot) run scoreboard players add #homes_found listHomeCounter 1
$execute if data storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot) run function shibakapack:home/list_entry_set with storage shibakapack:homes temp_entry

scoreboard players add #list_slot listHomeCounter 1
execute store result storage shibakapack:homes temp.slot int 1 run scoreboard players get #list_slot listHomeCounter
execute if score #list_slot listHomeCounter <= #max_slot listHomeCounter run function shibakapack:home/list_loop with storage shibakapack:homes temp