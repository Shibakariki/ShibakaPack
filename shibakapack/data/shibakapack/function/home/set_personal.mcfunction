scoreboard players set #slot listHomeCounter 1
scoreboard players set @s homeSetIndex 0
execute store result storage shibakapack:homes temp.u1 int 1 run data get entity @s UUID[0]
execute store result storage shibakapack:homes temp.u2 int 1 run data get entity @s UUID[1]
execute store result storage shibakapack:homes temp.u3 int 1 run data get entity @s UUID[2]
execute store result storage shibakapack:homes temp.u4 int 1 run data get entity @s UUID[3]
execute store result storage shibakapack:homes temp.slot int 1 run scoreboard players get #slot listHomeCounter
function shibakapack:home/find_free_slot with storage shibakapack:homes temp
# Save the home only if a free slot was found (homeSetIndex > 0)
execute if score @s homeSetIndex matches 1.. run function shibakapack:home/set