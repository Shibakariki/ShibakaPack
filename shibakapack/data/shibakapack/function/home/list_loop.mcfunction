data remove storage shibakapack:homes temp_entry
$execute if data storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot) run data modify storage shibakapack:homes temp_entry set from storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot)
$execute if data storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot) run data modify storage shibakapack:homes temp_entry.slot set value $(slot)
$execute if data storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot) run function shibakapack:home/list_entry_set with storage shibakapack:homes temp_entry
# $execute unless data storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot) run function shibakapack:home/list_entry_empty with storage shibakapack:homes temp

scoreboard players add #list_slot listCounter 1
execute store result storage shibakapack:homes temp.slot int 1 run scoreboard players get #list_slot listCounter
execute if score #list_slot listCounter <= #max_slot listCounter run function shibakapack:home/list_loop with storage shibakapack:homes temp