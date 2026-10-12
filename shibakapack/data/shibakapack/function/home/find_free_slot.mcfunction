execute store result storage shibakapack:homes temp.slot int 1 run scoreboard players get #slot listHomeCounter

$execute if score #slot listHomeCounter <= #max_slot listHomeCounter unless data storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot) run tellraw @s [{"text":"[Debug] Slot ","color":"gray"},{"text":"$(slot)","color":"gold"},{"text":" is free","color":"green"}]
$execute if score #slot listHomeCounter <= #max_slot listHomeCounter if data storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot) run tellraw @s [{"text":"[Debug] Slot ","color":"gray"},{"text":"$(slot)","color":"gold"},{"text":" is used","color":"red"}]

# Free slot found: store it and stop the loop; home/set is called by set_personal after the loop ends
$execute if score #slot listHomeCounter <= #max_slot listHomeCounter unless data storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot) run scoreboard players operation @s homeSetIndex = #slot listHomeCounter
$execute if score #slot listHomeCounter <= #max_slot listHomeCounter unless data storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot) run scoreboard players set #slot listHomeCounter 2147483647

# $ prefix required so $(slot) is substituted; without it the data check always fails and #slot never increments
$execute if score #slot listHomeCounter <= #max_slot listHomeCounter if data storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot) run scoreboard players add #slot listHomeCounter 1
# Refresh temp.slot before the recursive call so the next macro invocation receives the updated slot value
execute store result storage shibakapack:homes temp.slot int 1 run scoreboard players get #slot listHomeCounter
execute if score #slot listHomeCounter <= #max_slot listHomeCounter run function shibakapack:home/find_free_slot with storage shibakapack:homes temp