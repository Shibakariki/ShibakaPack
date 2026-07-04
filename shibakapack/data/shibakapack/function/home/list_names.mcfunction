$data modify storage shibakapack:homes temp.name set from storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot).name
$execute unless data storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot) run tellraw @s {"text":"No homes yet","color":"gray"}
$execute if data storage shibakapack:homes players.$(u1)_$(u2)_$(u3)_$(u4).homes.$(slot) run tellraw @s {"text":"─── Homes ───","color":"gold","bold":true}
function shibakapack:home/list_loop with storage shibakapack:homes temp
