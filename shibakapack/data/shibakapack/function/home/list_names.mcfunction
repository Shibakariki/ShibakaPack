scoreboard players set #homes_found listHomeCounter 0
$data modify storage shibakapack:homes temp.name set from storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot).name
$execute unless data storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot) run tellraw @s {"text":"No homes yet","color":"gray"}
$execute if data storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot) run tellraw @s {"text":"─── Homes ───","color":"gold","bold":true}
function shibakapack:home/list_loop with storage shibakapack:homes temp
execute if score #homes_found listHomeCounter < #max_slot listHomeCounter run tellraw @s [{"text":"[+] ","color":"green"},{"text":"Create home","color":"green","click_event":{"action":"run_command","command":"/trigger homeSetPersonal"},"hover_event":{"action":"show_text","value":"Create the next free home"}}]
